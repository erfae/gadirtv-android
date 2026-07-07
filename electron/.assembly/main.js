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
    try { mpvProc.kill(); } catch (_) {}
  }
  mpvProc = null;
}

ipcMain.handle('mpv:play', (evt, { url, name, fullscreen }) => {
  const mpv = resolveMpv();
  if (!mpv) return { ok: false, error: 'mpv.exe no encontrado en el paquete' };
  killMpv();
  const args = [
    url,
    `--title=${name || 'GadirTV'}`,
    '--force-window=yes',
    '--keep-open=no',
    '--osc=yes',
    '--hwdec=auto-safe',
    '--cache=yes',
    '--demuxer-max-bytes=200M',
    '--demuxer-readahead-secs=20',
    '--user-agent=VLC/3.0.20 LibVLC/3.0.20',
  ];
  if (fullscreen) args.push('--fs');
  try {
    mpvProc = spawn(mpv, args, { detached: false, stdio: 'ignore' });
    mpvProc.on('exit', () => { mpvProc = null; });
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
  win.webContents.on('did-fail-load', () => win.webContents.openDevTools({ mode: 'right' }));
  win.on('closed', () => killMpv());
}

app.whenReady().then(createWindow);
app.on('window-all-closed', () => { killMpv(); if (process.platform !== 'darwin') app.quit(); });
app.on('activate', () => { if (BrowserWindow.getAllWindows().length === 0) createWindow(); });
app.on('will-quit', () => { globalShortcut.unregisterAll(); killMpv(); });
