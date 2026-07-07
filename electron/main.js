const { app, BrowserWindow, Menu } = require('electron');
const path = require('path');

const BACKEND_URL = 'https://adaptive-portal-hub.preview.emergentagent.com';

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
    },
  });
  Menu.setApplicationMenu(null);
  win.loadURL(BACKEND_URL);
}

app.whenReady().then(createWindow);
app.on('window-all-closed', () => { if (process.platform !== 'darwin') app.quit(); });
app.on('activate', () => { if (BrowserWindow.getAllWindows().length === 0) createWindow(); });
