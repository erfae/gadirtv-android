const { app, BrowserWindow, Menu, session } = require('electron');
const path = require('path');

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
      webSecurity: false, // allow HTTP requests to gadir.co from bundled frontend
    },
  });
  Menu.setApplicationMenu(null);

  // Impersonate a common IPTV client user-agent so gadir.co responds normally.
  const filter = { urls: ['http://gadir.co/*', 'https://gadir.co/*'] };
  session.defaultSession.webRequest.onBeforeSendHeaders(filter, (details, cb) => {
    details.requestHeaders['User-Agent'] = 'VLC/3.0.20 LibVLC/3.0.20';
    cb({ requestHeaders: details.requestHeaders });
  });

  win.loadFile(path.join(__dirname, 'app', 'index.html'));
}

app.whenReady().then(createWindow);
app.on('window-all-closed', () => { if (process.platform !== 'darwin') app.quit(); });
app.on('activate', () => { if (BrowserWindow.getAllWindows().length === 0) createWindow(); });
