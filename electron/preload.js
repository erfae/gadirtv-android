const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('electronAPI', {
  isElectron: true,
  playInMpv: (opts) => ipcRenderer.invoke('mpv:play', opts),
  killMpv: () => ipcRenderer.invoke('mpv:kill'),
  resetSession: () => ipcRenderer.invoke('session:reset'),
  onMpvExited: (cb) => { ipcRenderer.on('mpv:exited', cb); return () => ipcRenderer.removeListener('mpv:exited', cb); },
  winMin: () => ipcRenderer.invoke('win:min'),
  winMax: () => ipcRenderer.invoke('win:max'),
  winClose: () => ipcRenderer.invoke('win:close'),
  // Native HTTP call to the Xtream server, routed through Node.js (main
  // process) to bypass any Chromium networking restrictions on plain HTTP.
  xtreamGet: (opts) => ipcRenderer.invoke('xtream:get', opts),
});
