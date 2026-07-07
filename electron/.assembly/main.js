const { app, BrowserWindow, Menu, session, globalShortcut, ipcMain } = require('electron');
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

ipcMain.handle('mpv:kill', () => { killMpv(); return { ok: true }; });

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

ipcMain.handle('mpv:play', (evt, { url, name, fullscreen }) => {
  const mpv = resolveMpv();
  if (!mpv) return { ok: false, error: 'mpv.exe no encontrado en el paquete' };
  killMpv();
  const args = [
    url,
    '--force-window=immediate',
    '--keep-open=no',
    '--idle=no',
    '--osc=yes',
    '--volume=100',
    '--hwdec=auto-safe',
    '--cache=yes',
    '--cache-secs=10',
    '--demuxer-max-bytes=100M',
    '--demuxer-readahead-secs=10',
    '--network-timeout=20',
    '--stream-lavf-o=reconnect=1,reconnect_streamed=1,reconnect_delay_max=5,reconnect_on_network_error=1',
    '--force-seekable=yes',
    '--audio-fallback-to-null=yes',
    '--ytdl=no',
    '--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0 Safari/537.36',
    '--msg-level=all=warn',
    '--vd-lavc-fast=yes',
  ];
  if (name) args.push(`--title=${name}`);
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

function createWindow() {
  const win = new BrowserWindow({
    width: 1440,
    height: 900,
    minWidth: 1024,
    minHeight: 700,
    frame: false,
    titleBarStyle: 'hidden',
    backgroundColor: '#050505',
    icon: path.join(__dirname, 'icon.png'),
    title: 'GadirTV',
    autoHideMenuBar: true,
    webPreferences: {
      preload: path.join(__dirname, 'preload.js'),
      contextIsolation: true,
      nodeIntegration: false,
      webSecurity: false,
      allowRunningInsecureContent: true,
    },
  });
  Menu.setApplicationMenu(null);

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
  win.on('closed', () => killMpv());
}

app.whenReady().then(createWindow);
app.on('window-all-closed', () => { killMpv(); if (process.platform !== 'darwin') app.quit(); });
app.on('activate', () => { if (BrowserWindow.getAllWindows().length === 0) createWindow(); });
app.on('will-quit', () => { globalShortcut.unregisterAll(); killMpv(); });
