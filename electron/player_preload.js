// Preload for the embedded-player BrowserWindow. Exposes a minimal
// bridge so the transparent HTML overlay (Back button) can talk to the
// main process to hide the player, and toggle mouse-event pass-through
// so mpv's OSC (on-screen controller) responds to clicks on the video.
const { contextBridge, ipcRenderer } = require('electron');
contextBridge.exposeInMainWorld('gadirPlayer', {
  back: () => ipcRenderer.send('player:back'),
  setIgnoreMouse: (ignore) => ipcRenderer.send('player:ignore-mouse', !!ignore),
});
