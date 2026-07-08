// Preload for the embedded-player BrowserWindow. Exposes a minimal
// bridge so the transparent HTML overlay (Back button) can talk to the
// main process to hide the player.
const { contextBridge, ipcRenderer } = require('electron');
contextBridge.exposeInMainWorld('gadirPlayer', {
  back: () => ipcRenderer.send('player:back'),
});
