// Preload for the embedded-player BrowserWindow. Exposes a minimal
// bridge so the transparent HTML overlay (Back button + control bar)
// can talk to the main process.
const { contextBridge, ipcRenderer } = require('electron');
contextBridge.exposeInMainWorld('gadirPlayer', {
  back: () => ipcRenderer.send('player:back'),
  setIgnoreMouse: (ignore) => ipcRenderer.send('player:ignore-mouse', !!ignore),
  // Send a JSON array as a mpv IPC command (e.g. ['cycle','pause']).
  cmd: (arr) => ipcRenderer.send('player:cmd', arr),
  // Subscribe to observed property changes (pause / volume).
  onState: (cb) => {
    const h = (_e, data) => cb(data);
    ipcRenderer.on('player:state', h);
    return () => ipcRenderer.removeListener('player:state', h);
  },
});
