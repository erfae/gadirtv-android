const { app, BrowserWindow, Menu, session, globalShortcut, ipcMain, screen } = require('electron');
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
    '--volume=100',
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
  if (name) args.push(`--title=GadirTV — ${name}`);
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

function destroyPlayerWin() {
  if (playerBoundsTracker) { clearInterval(playerBoundsTracker); playerBoundsTracker = null; }
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
    // Transparent + no content = Chromium does not paint over mpv's frames.
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
      contextIsolation: true,
      sandbox: true,
      backgroundThrottling: false,
      offscreen: false,
    },
  });
  // Fully transparent empty page. No content = no Chromium repaint on the HWND.
  playerWin.loadURL('data:text/html,<html><body style="margin:0;background:transparent"></body></html>');
  playerWin.on('closed', () => { playerWin = null; killMpv(); });
  playerWin.setMenuBarVisibility(false);
  return playerWin;
}

// 48px top strip stays uncovered so the app's "Volver" button and title
// bar remain interactive above the embedded mpv.
const PLAYER_TOP_STRIP = 48;
function updatePlayerBounds() {
  if (!playerWin || playerWin.isDestroyed() || !mainWinRef || mainWinRef.isDestroyed()) return;
  const b = mainWinRef.getContentBounds();
  try {
    playerWin.setBounds({
      x: b.x,
      y: b.y + PLAYER_TOP_STRIP,
      width: b.width,
      height: Math.max(1, b.height - PLAYER_TOP_STRIP),
    });
  } catch (_) {}
}

ipcMain.handle('player:show', async (_evt, { url, name }) => {
  try {
    if (!mainWinRef || mainWinRef.isDestroyed()) return { ok: false, error: 'main window missing' };
    const mpv = resolveMpv();
    if (!mpv) return { ok: false, error: 'mpv.exe no encontrado' };
    await killMpvAndWait(500);
    const pw = ensurePlayerWin(mainWinRef);
    updatePlayerBounds();
    pw.showInactive();
    updatePlayerBounds();
    // Focus AFTER show so mpv gets keyboard input.
    setTimeout(() => { try { pw.focus(); } catch (_) {} }, 50);
    // Track main-window bounds and mirror them.
    if (playerBoundsTracker) clearInterval(playerBoundsTracker);
    playerBoundsTracker = setInterval(updatePlayerBounds, 300);
    // Read native HWND
    const hwndBuf = pw.getNativeWindowHandle();
    // On Windows x64 HWND fits in 32 bits.
    const hwnd = hwndBuf.readInt32LE(0);
    const args = [
      url,
      `--wid=${hwnd}`,
      // Direct3D VO. Deprecated but the most compatible with --wid on
      // Windows over an Electron BrowserWindow (works when d3d11 / gpu
      // silently drops frames due to compositor conflict).
      '--vo=direct3d',
      '--force-window=yes',
      '--keep-open=no',
      '--idle=no',
      '--osc=yes',
      '--volume=100',
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
    if (name) args.push(`--title=GadirTV — ${name}`);
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
    mpvProc.on('exit', (code) => {
      mpvProc = null;
      if (playerWin && !playerWin.isDestroyed()) { try { playerWin.hide(); } catch (_) {} }
      if (playerBoundsTracker) { clearInterval(playerBoundsTracker); playerBoundsTracker = null; }
      try { globalShortcut.unregister('Escape'); } catch (_) {}
      try { globalShortcut.unregister('Backspace'); } catch (_) {}
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
  if (playerWin && !playerWin.isDestroyed()) { try { playerWin.hide(); } catch (_) {} }
  try { globalShortcut.unregister('Escape'); } catch (_) {}
  try { globalShortcut.unregister('Backspace'); } catch (_) {}
  if (mainWinRef && !mainWinRef.isDestroyed()) {
    try { mainWinRef.webContents.send('player:visibility', { visible: false }); } catch (_) {}
    try { mainWinRef.focus(); } catch (_) {}
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
    title: 'GadirTV',
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
