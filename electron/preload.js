const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('electronAPI', {
  isElectron: true,
  playInMpv: (opts) => ipcRenderer.invoke('mpv:play', opts),
});
