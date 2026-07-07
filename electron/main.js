const { app, BrowserWindow, Menu, session, globalShortcut } = require('electron');
const path = require('path');

// Fully disable Chromium security features that block IPTV streaming
app.commandLine.appendSwitch('disable-features', 'CrossOriginOpenerPolicy,IsolateOrigins,site-per-process,BlockInsecurePrivateNetworkRequests');
app.commandLine.appendSwitch('allow-insecure-localhost');
app.commandLine.appendSwitch('ignore-certificate-errors');
app.commandLine.appendSwitch('disable-web-security');

function createWindow() {
  const win = new BrowserWindow({
    width: 1440,
    height: 900,
    minWidth: 1024,
    minHeight: 700,
    backgroundColor: '#050505',
    icon: path.join(__dirname, 'icon.png'),
    title: 'GadirTV',
    autoHideMenuBar: true,
    webPreferences: {
      contextIsolation: true,
      nodeIntegration: false,
      webSecurity: false,
      allowRunningInsecureContent: true,
      experimentalFeatures: true,
    },
  });
  Menu.setApplicationMenu(null);

  // Force a common IPTV client user-agent for gadir.co requests and inject
  // permissive CORS headers so browser cannot block them for any reason.
  const filter = { urls: ['http://gadir.co/*', 'https://gadir.co/*', 'http://*/*', 'https://*/*'] };
  session.defaultSession.webRequest.onBeforeSendHeaders(filter, (details, cb) => {
    if (/gadir\.co/i.test(details.url)) {
      details.requestHeaders['User-Agent'] = 'VLC/3.0.20 LibVLC/3.0.20';
      delete details.requestHeaders['Origin'];
      delete details.requestHeaders['Referer'];
    }
    cb({ requestHeaders: details.requestHeaders });
  });
  session.defaultSession.webRequest.onHeadersReceived((details, cb) => {
    const headers = details.responseHeaders || {};
    headers['Access-Control-Allow-Origin'] = ['*'];
    headers['Access-Control-Allow-Headers'] = ['*'];
    headers['Access-Control-Allow-Methods'] = ['GET, POST, OPTIONS, HEAD'];
    cb({ responseHeaders: headers });
  });

  // Toggle DevTools with Ctrl+Shift+I to help debug from the user side.
  globalShortcut.register('CommandOrControl+Shift+I', () => {
    if (win.webContents.isDevToolsOpened()) win.webContents.closeDevTools();
    else win.webContents.openDevTools({ mode: 'right' });
  });

  win.loadFile(path.join(__dirname, 'app', 'index.html'));

  // Auto-open DevTools on startup so user can see any errors/logs
  win.webContents.once('did-finish-load', () => {
    win.webContents.openDevTools({ mode: 'detach' });
  });

  // If the page can't be reached (blank screen), open DevTools so user can screenshot the error.
  win.webContents.on('did-fail-load', () => {
    win.webContents.openDevTools({ mode: 'right' });
  });
}

app.whenReady().then(createWindow);
app.on('window-all-closed', () => { if (process.platform !== 'darwin') app.quit(); });
app.on('activate', () => { if (BrowserWindow.getAllWindows().length === 0) createWindow(); });
app.on('will-quit', () => { globalShortcut.unregisterAll(); });
