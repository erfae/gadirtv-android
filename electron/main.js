const { app, BrowserWindow, Menu, session, globalShortcut, ipcMain, screen, shell } = require('electron');
const path = require('path');
const { spawn } = require('child_process');
const fs = require('fs');

app.commandLine.appendSwitch('disable-features', 'CrossOriginOpenerPolicy,IsolateOrigins,site-per-process,BlockInsecurePrivateNetworkRequests');
app.commandLine.appendSwitch('allow-insecure-localhost');
app.commandLine.appendSwitch('ignore-certificate-errors');
app.commandLine.appendSwitch('disable-web-security');

function resolveMpv() {
  const exeDir = path.dirname(app.getPath('exe'));
  const candidates = [
    path.join(exeDir, 'mpv', 'mpv.exe'),
    path.join(process.resourcesPath || __dirname, '..', 'mpv', 'mpv.exe'),
    path.join(process.resourcesPath || __dirname, 'mpv', 'mpv.exe'),
    path.join(__dirname, 'mpv', 'mpv.exe'),
  ];
  for (const c of candidates) { if (fs.existsSync(c)) return c; }
  console.error('[mpv] not found. Searched:', candidates);
  return null;
}

let mpvProc = null;
function killMpv() {
  if (mpvProc && !mpvProc.killed) {
    const pid = mpvProc.pid;
    try {
      if (process.platform === 'win32' && pid) {
        require('child_process').spawnSync('taskkill', ['/F', '/T', '/PID', String(pid)]);
      } else {
        mpvProc.kill('SIGKILL');
      }
    } catch (_) {}
  }
  // Also blanket-kill any lingering mpv.exe just in case (Windows)
  if (process.platform === 'win32') {
    try { require('child_process').spawnSync('taskkill', ['/F', '/IM', 'mpv.exe']); } catch (_) {}
  }
  mpvProc = null;
}

// Awaitable variant used before spawning a new mpv so audio never overlaps.
function killMpvAndWait(ms = 250) {
  killMpv();
  return new Promise(r => setTimeout(r, ms));
}

ipcMain.handle('mpv:kill', () => { killMpv(); return { ok: true }; });

ipcMain.handle('shell:openExternal', async (_evt, url) => {
  try {
    if (!url || typeof url !== 'string') return { ok: false, error: 'invalid url' };
    await shell.openExternal(url);
    return { ok: true };
  } catch (e) {
    return { ok: false, error: e.message };
  }
});

function readNativeHwnd(win) {
  if (!win || win.isDestroyed()) return null;
  const buf = win.getNativeWindowHandle();
  if (!buf || buf.length < 4) return null;
  if (buf.length >= 8) return Number(buf.readBigUInt64LE(0));
  return buf.readUInt32LE(0);
}

// Native Node HTTP client used to talk to the Xtream server. This
// completely bypasses Chromium's networking stack (which was silently
// blocking the plain-HTTP requests to gadir.co from the renderer even
// with webSecurity disabled). Mimics VLC exactly.
const http = require('http');
const https = require('https');
const { URL } = require('url');

// Reuse sockets like VLC/IPTV Smarters do. Some Xtream servers return
// empty bodies when the client keeps opening new sockets rapidly.
const httpAgent  = new http.Agent({ keepAlive: true, maxSockets: 4 });
const httpsAgent = new https.Agent({ keepAlive: true, maxSockets: 4 });

function nodeHttpJsonOnce({ host, port, protocol, path: p, timeoutMs }) {
  return new Promise((resolve) => {
    const lib = protocol === 'https:' ? https : http;
    const agent = protocol === 'https:' ? httpsAgent : httpAgent;
    const req = lib.request({
      host, port, path: p, method: 'GET',
      timeout: timeoutMs || 30000,
      agent,
      headers: {
        'User-Agent': 'VLC/3.0.20 LibVLC/3.0.20',
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'identity',
        'Connection': 'keep-alive',
      },
    }, (res) => {
      const chunks = [];
      res.on('data', c => chunks.push(c));
      res.on('end', () => {
        const buf = Buffer.concat(chunks).toString('utf8');
        try { resolve({ ok: true, status: res.statusCode, data: JSON.parse(buf), rawLen: buf.length }); }
        catch (_) { resolve({ ok: true, status: res.statusCode, data: buf, rawLen: buf.length }); }
      });
      res.on('error', (e) => resolve({ ok: false, error: 'res:' + e.message }));
    });
    req.on('timeout', () => { req.destroy(new Error('timeout')); });
    req.on('error', (e) => resolve({ ok: false, error: e.message }));
    req.end();
  });
}

// Retry when the server returns 200 but empty body (gadir.co does this
// under load / anti-abuse for large payloads like live/series categories).
async function nodeHttpJson(opts) {
  let last = null;
  for (let attempt = 1; attempt <= 3; attempt++) {
    const res = await nodeHttpJsonOnce(opts);
    last = res;
    if (!res.ok) {
      // network-level error — retry
    } else if (Array.isArray(res.data) || (res.data && typeof res.data === 'object')) {
      return res; // real data
    } else if (typeof res.data === 'string' && res.data.trim().length > 0) {
      return res; // non-empty string (could still be usable)
    }
    // empty body → wait and retry with slightly increasing delay
    await new Promise(r => setTimeout(r, 400 * attempt));
  }
  return last;
}

ipcMain.handle('xtream:get', async (_evt, { baseUrl, username, password, action, extra }) => {
  try {
    const u = new URL(baseUrl || 'http://gadir.co:80');
    const params = new URLSearchParams({ username, password });
    if (action) params.set('action', action);
    if (extra && typeof extra === 'object') {
      for (const [k, v] of Object.entries(extra)) {
        if (v !== undefined && v !== null && v !== '') params.set(k, String(v));
      }
    }
    const p = `/player_api.php?${params.toString()}`;
    return await nodeHttpJson({
      host: u.hostname,
      port: u.port || (u.protocol === 'https:' ? 443 : 80),
      protocol: u.protocol,
      path: p,
      timeoutMs: 30000,
    });
  } catch (e) {
    return { ok: false, error: e.message };
  }
});

ipcMain.handle('session:reset', async () => {
  try {
    killMpv();
    // Force-close all TCP connections held by Chromium (HTTP/1.1 keep-alives to gadir)
    if (session.defaultSession.closeAllConnections) {
      try { await session.defaultSession.closeAllConnections(); } catch (_) {}
    }
    await session.defaultSession.clearStorageData({ storages: ['cookies', 'cachestorage', 'serviceworkers', 'shadercache'] });
    await session.defaultSession.clearCache();
    return { ok: true };
  } catch (e) { return { ok: false, error: e.message }; }
});

ipcMain.handle('mpv:play', async (evt, { url, name, fullscreen }) => {
  const mpv = resolveMpv();
  if (!mpv) return { ok: false, error: 'mpv.exe no encontrado en el paquete' };
  // Kill any prior mpv AND wait so audio never overlaps.
  await killMpvAndWait(500);
  const args = [
    url,
    '--force-window=immediate',
    '--keep-open=no',
    '--idle=no',
    '--osc=yes',
    '--volume=130',
    '--volume-max=200',
    '--hwdec=auto-safe',
    '--vd-lavc-software-fallback=yes',
    '--cache=yes',
    '--cache-secs=10',
    '--demuxer-max-bytes=100M',
    '--demuxer-readahead-secs=10',
    '--network-timeout=20',
    '--stream-lavf-o=reconnect=1,reconnect_streamed=1,reconnect_delay_max=5,reconnect_on_network_error=1',
    '--force-seekable=yes',
    '--audio-fallback-to-null=yes',
    '--ytdl=no',
    '--user-agent=VLC/3.0.20 LibVLC/3.0.20',
    '--msg-level=all=warn',
    '--vd-lavc-fast=yes',
    // MPEG-TS live streams: extra tolerance
    '--demuxer-lavf-probe-info=yes',
    '--demuxer-lavf-analyzeduration=5',
    '--demuxer-lavf-probesize=10000000',
  ];
  if (name) args.push(`--title=Gadir IPTV Player — ${name}`);
  if (fullscreen) args.push('--fs');
  try {
    mpvProc = spawn(mpv, args, { detached: false, stdio: ['ignore', 'ignore', 'pipe'], cwd: path.dirname(mpv) });
    let stderr = '';
    if (mpvProc.stderr) {
      mpvProc.stderr.setEncoding('utf8');
      mpvProc.stderr.on('data', d => { stderr += d; if (stderr.length > 2000) stderr = stderr.slice(-2000); });
    }
    mpvProc.on('exit', (code) => {
      mpvProc = null;
      BrowserWindow.getAllWindows().forEach(w => {
        try { w.webContents.send('mpv:exited', { code, stderr: stderr.slice(-1000) }); } catch (_) {}
      });
    });
    return { ok: true };
  } catch (e) {
    return { ok: false, error: e.message };
  }
});

// ─── Embedded player (child BrowserWindow attached to main + mpv --wid) ───
let playerWin = null;
let mainWinRef = null;
let playerBoundsTracker = null;
let mpvIpc = null;        // net.Socket connected to mpv's IPC named pipe
let mpvIpcPath = null;    // Full \\.\pipe\NAME path (unique per session)
const net = require('net');

function connectMpvIpc(pipePath, tries = 40) {
  return new Promise((resolve) => {
    let n = 0;
    const attempt = () => {
      n++;
      const s = net.connect(pipePath);
      let done = false;
      s.on('connect', () => { done = true; resolve(s); });
      s.on('error', () => {
        if (done) return;
        try { s.destroy(); } catch (_) {}
        if (n >= tries) { resolve(null); return; }
        setTimeout(attempt, 100);
      });
    };
    attempt();
  });
}

function sendMpvCmd(cmd) {
  if (!mpvIpc || mpvIpc.destroyed) return false;
  try { mpvIpc.write(JSON.stringify({ command: cmd }) + "\n"); return true; }
  catch (_) { return false; }
}

function destroyPlayerWin() {
  if (playerBoundsTracker) { clearInterval(playerBoundsTracker); playerBoundsTracker = null; }
  if (mpvIpc) { try { mpvIpc.destroy(); } catch (_) {} mpvIpc = null; }
  if (playerWin && !playerWin.isDestroyed()) {
    try { playerWin.destroy(); } catch (_) {}
  }
  playerWin = null;
}

function ensurePlayerWin(parent) {
  if (playerWin && !playerWin.isDestroyed()) return playerWin;
  playerWin = new BrowserWindow({
    parent,
    frame: false,
    // Transparent + tiny opaque button = Chromium paints ONLY the button
    // and lets mpv show through everywhere else via the transparent HWND.
    transparent: true,
    backgroundColor: '#00000000',
    show: false,
    skipTaskbar: true,
    resizable: false,
    movable: false,
    minimizable: false,
    maximizable: false,
    focusable: true,
    fullscreenable: false,
    hasShadow: false,
    thickFrame: false,
    autoHideMenuBar: true,
    webPreferences: {
      preload: path.join(__dirname, 'player_preload.js'),
      contextIsolation: true,
      sandbox: false,
      backgroundThrottling: false,
      offscreen: false,
    },
  });
  // Overlay page with the Back button. Rest of the body is transparent so
  // the mpv-rendered frames are visible through the BrowserWindow HWND.
  playerWin.loadFile(path.join(__dirname, 'player_overlay.html'));
  playerWin.on('closed', () => { playerWin = null; killMpv(); });
  playerWin.setMenuBarVisibility(false);
  return playerWin;
}

// mpv covers the FULL primary display (no top strip). The Back button
// lives inside the overlay HTML loaded in the player window itself.
function updatePlayerBounds() {
  if (!playerWin || playerWin.isDestroyed()) return;
  let x, y, w, h;
  try {
    const d = screen.getPrimaryDisplay();
    ({ x, y, width: w, height: h } = d.bounds);
  } catch (_) {
    if (!mainWinRef || mainWinRef.isDestroyed()) return;
    const b = mainWinRef.getContentBounds();
    x = b.x; y = b.y; w = b.width; h = b.height;
  }
  try { playerWin.setBounds({ x, y, width: w, height: Math.max(1, h) }); } catch (_) {}
}

// Renderer of the overlay (Back button) → hide the player.
ipcMain.on('player:back', () => { try { hideEmbeddedPlayer(); } catch (_) {} });

// Toggle mouse-event pass-through for the overlay window. When true, the
// overlay is click-through and mpv's on-screen controller (OSC) reacts
// to user clicks. When false, the overlay intercepts clicks (used only
// for the tiny Back-button area).
ipcMain.on('player:ignore-mouse', (_e, ignore) => {
  if (!playerWin || playerWin.isDestroyed()) return;
  try { playerWin.setIgnoreMouseEvents(!!ignore, { forward: true }); } catch (_) {}
});

// Send a command to mpv via its IPC pipe. Overlay's control bar uses this
// for play/pause/seek/volume/etc. Fire-and-forget.
ipcMain.on('player:cmd', (_e, cmd) => {
  if (Array.isArray(cmd)) sendMpvCmd(cmd);
});

ipcMain.handle('player:show', async (_evt, { url, name }) => {
  try {
    if (!mainWinRef || mainWinRef.isDestroyed()) return { ok: false, error: 'main window missing' };
    const mpv = resolveMpv();
    if (!mpv) return { ok: false, error: 'mpv.exe no encontrado' };
    await killMpvAndWait(500);
    const pw = ensurePlayerWin(mainWinRef);
    updatePlayerBounds();
    pw.showInactive();
    try { pw.setAlwaysOnTop(true, 'screen-saver'); } catch (_) {}
    try { pw.setIgnoreMouseEvents(true, { forward: true }); } catch (_) {}
    updatePlayerBounds();
    // Let the overlay window finish painting before mpv embeds into its HWND.
    await new Promise(r => setTimeout(r, 200));
    updatePlayerBounds();
    try { pw.focus(); } catch (_) {}
    // Track main-window bounds and mirror them.
    if (playerBoundsTracker) clearInterval(playerBoundsTracker);
    playerBoundsTracker = setInterval(updatePlayerBounds, 300);
    const hwnd = readNativeHwnd(pw);
    if (!hwnd) return { ok: false, error: 'no se pudo obtener HWND del reproductor' };
    // IPC named pipe for controlling mpv from Node (play/pause/seek/volume).
    mpvIpcPath = `\\\\.\\pipe\\gadirmpv-${process.pid}-${Date.now()}`;
    const args = [
      url,
      `--wid=${hwnd}`,
      `--input-ipc-server=${mpvIpcPath}`,
      // Direct3D VO. Deprecated but the most compatible with --wid on
      // Windows over an Electron BrowserWindow (works when d3d11 / gpu
      // silently drops frames due to compositor conflict).
      '--vo=direct3d',
      '--force-window=yes',
      '--keep-open=no',
      '--idle=no',
      '--osc=yes',
      '--volume=130',
      '--volume-max=200',
      '--audio-normalize-downmix=yes',
      '--hwdec=no',
      '--vd-lavc-software-fallback=yes',
      '--cache=yes',
      '--cache-secs=10',
      '--demuxer-max-bytes=100M',
      '--demuxer-readahead-secs=10',
      '--network-timeout=20',
      '--stream-lavf-o=reconnect=1,reconnect_streamed=1,reconnect_delay_max=5,reconnect_on_network_error=1',
      '--force-seekable=yes',
      '--audio-fallback-to-null=yes',
      '--ytdl=no',
      '--user-agent=VLC/3.0.20 LibVLC/3.0.20',
      '--msg-level=all=warn',
      '--vd-lavc-fast=yes',
      '--demuxer-lavf-probe-info=yes',
      '--demuxer-lavf-analyzeduration=5',
      '--demuxer-lavf-probesize=10000000',
    ];
    if (name) args.push(`--title=Gadir IPTV Player — ${name}`);
    mpvProc = spawn(mpv, args, { detached: false, stdio: ['ignore', 'ignore', 'pipe'], cwd: path.dirname(mpv) });
    let stderr = '';
    if (mpvProc.stderr) {
      mpvProc.stderr.setEncoding('utf8');
      mpvProc.stderr.on('data', d => { stderr += d; if (stderr.length > 2000) stderr = stderr.slice(-2000); });
    }
    // Broadcast that the embedded player is now visible.
    try { mainWinRef.webContents.send('player:visibility', { visible: true, name }); } catch (_) {}
    // Register Escape / Backspace as global "hide player" while playing.
    try { globalShortcut.register('Escape', () => hideEmbeddedPlayer()); } catch (_) {}
    try { globalShortcut.register('Backspace', () => hideEmbeddedPlayer()); } catch (_) {}
    // Connect to mpv IPC pipe (async, may take a few hundred ms).
    (async () => {
      const sock = await connectMpvIpc(mpvIpcPath);
      if (sock) {
        mpvIpc = sock;
        mpvIpc.on('close', () => { mpvIpc = null; });
        mpvIpc.on('error', () => {});
        // Observe pause + volume so overlay UI can reflect state.
        sendMpvCmd(['observe_property', 1, 'pause']);
        sendMpvCmd(['observe_property', 2, 'volume']);
        let buf = '';
        mpvIpc.on('data', (chunk) => {
          buf += chunk.toString('utf8');
          const lines = buf.split('\n'); buf = lines.pop();
          for (const l of lines) {
            if (!l) continue;
            try {
              const obj = JSON.parse(l);
              if (obj && obj.event === 'property-change' && playerWin && !playerWin.isDestroyed()) {
                try { playerWin.webContents.send('player:state', { name: obj.name, data: obj.data }); } catch (_) {}
              }
            } catch (_) {}
          }
        });
        // Prime overlay with current values.
        setTimeout(() => {
          try { playerWin && playerWin.webContents.send('player:state', { name: 'ipc-ready', data: true }); } catch (_) {}
        }, 100);
      }
    })();
    mpvProc.on('exit', (code) => {
      mpvProc = null;
      if (mpvIpc) { try { mpvIpc.destroy(); } catch (_) {} mpvIpc = null; }
      if (playerWin && !playerWin.isDestroyed()) { try { playerWin.hide(); } catch (_) {} }
      if (playerBoundsTracker) { clearInterval(playerBoundsTracker); playerBoundsTracker = null; }
      try { globalShortcut.unregister('Escape'); } catch (_) {}
      try { globalShortcut.unregister('Backspace'); } catch (_) {}
      if (mainWinRef && !mainWinRef.isDestroyed()) {
        try { mainWinRef.focus(); } catch (_) {}
      }
      BrowserWindow.getAllWindows().forEach(w => {
        try { w.webContents.send('mpv:exited', { code, stderr: stderr.slice(-1000) }); } catch (_) {}
        try { w.webContents.send('player:visibility', { visible: false }); } catch (_) {}
      });
    });
    return { ok: true };
  } catch (e) {
    return { ok: false, error: e.message };
  }
});

function hideEmbeddedPlayer() {
  killMpv();
  if (playerBoundsTracker) { clearInterval(playerBoundsTracker); playerBoundsTracker = null; }
  if (mpvIpc) { try { mpvIpc.destroy(); } catch (_) {} mpvIpc = null; }
  if (playerWin && !playerWin.isDestroyed()) { try { playerWin.hide(); } catch (_) {} }
  try { globalShortcut.unregister('Escape'); } catch (_) {}
  try { globalShortcut.unregister('Backspace'); } catch (_) {}
  if (mainWinRef && !mainWinRef.isDestroyed()) {
    try { mainWinRef.focus(); } catch (_) {}
    try { mainWinRef.webContents.send('player:visibility', { visible: false }); } catch (_) {}
  }
}

ipcMain.handle('player:hide', () => {
  hideEmbeddedPlayer();
  return { ok: true };
});

function createWindow() {
  const win = new BrowserWindow({
    width: 1440,
    height: 900,
    minWidth: 900,
    minHeight: 600,
    frame: false,
    fullscreen: true,
    kiosk: true,
    titleBarStyle: 'hidden',
    backgroundColor: '#050505',
    icon: path.join(__dirname, 'icon.png'),
    title: 'Gadir IPTV Player',
    autoHideMenuBar: true,
    show: false,
    webPreferences: {
      preload: path.join(__dirname, 'preload.js'),
      contextIsolation: true,
      nodeIntegration: false,
      webSecurity: false,
      allowRunningInsecureContent: true,
    },
  });
  mainWinRef = win;
  Menu.setApplicationMenu(null);

  // True full-screen that covers the Windows taskbar. Kiosk mode + always
  // on top + primary-display bounds together guarantee we occupy the
  // entire monitor at any resolution.
  win.once('ready-to-show', () => {
    try {
      const d = screen.getPrimaryDisplay();
      win.setBounds({ x: d.bounds.x, y: d.bounds.y, width: d.bounds.width, height: d.bounds.height });
      win.setAlwaysOnTop(true, 'screen-saver');
      win.setFullScreen(true);
    } catch (_) {}
    win.show();
  });

  // Keep embedded player window aligned with main window
  const syncBounds = () => updatePlayerBounds();
  win.on('move', syncBounds);
  win.on('resize', syncBounds);
  win.on('maximize', syncBounds);
  win.on('unmaximize', syncBounds);
  win.on('restore', syncBounds);

  // Expose window control IPCs
  ipcMain.handle('win:min', () => win.minimize());
  ipcMain.handle('win:max', () => (win.isMaximized() ? win.unmaximize() : win.maximize()));
  ipcMain.handle('win:close', () => win.close());
  ipcMain.handle('win:isMax', () => win.isMaximized());

  const filter = { urls: ['http://gadir.co/*', 'https://gadir.co/*'] };
  session.defaultSession.webRequest.onBeforeSendHeaders(filter, (details, cb) => {
    details.requestHeaders['User-Agent'] = 'VLC/3.0.20 LibVLC/3.0.20';
    delete details.requestHeaders['Origin'];
    delete details.requestHeaders['Referer'];
    cb({ requestHeaders: details.requestHeaders });
  });
  session.defaultSession.webRequest.onHeadersReceived((details, cb) => {
    const headers = details.responseHeaders || {};
    headers['Access-Control-Allow-Origin'] = ['*'];
    headers['Access-Control-Allow-Headers'] = ['*'];
    headers['Access-Control-Allow-Methods'] = ['GET, POST, OPTIONS, HEAD'];
    cb({ responseHeaders: headers });
  });

  globalShortcut.register('CommandOrControl+Shift+I', () => {
    if (win.webContents.isDevToolsOpened()) win.webContents.closeDevTools();
    else win.webContents.openDevTools({ mode: 'right' });
  });

  win.loadFile(path.join(__dirname, 'app', 'index.html'));

  // Disable reload shortcuts (F5, Ctrl+R, Ctrl+Shift+R) so accidental
  // page reload does not wipe the current session.
  win.webContents.on('before-input-event', (event, input) => {
    if (input.type !== 'keyDown') return;
    const k = (input.key || '').toLowerCase();
    if (k === 'f5') { event.preventDefault(); return; }
    if ((input.control || input.meta) && k === 'r') { event.preventDefault(); return; }
    if ((input.control || input.meta) && input.shift && k === 'r') { event.preventDefault(); return; }
  });
  win.webContents.on('did-fail-load', () => win.webContents.openDevTools({ mode: 'right' }));
  win.on('close', () => { killMpv(); destroyPlayerWin(); });
  win.on('closed', () => { killMpv(); destroyPlayerWin(); mainWinRef = null; });
}

app.whenReady().then(createWindow);
app.on('before-quit', () => { killMpv(); });
app.on('window-all-closed', () => { killMpv(); if (process.platform !== 'darwin') app.quit(); });
app.on('activate', () => { if (BrowserWindow.getAllWindows().length === 0) createWindow(); });
app.on('will-quit', () => { globalShortcut.unregisterAll(); killMpv(); });
