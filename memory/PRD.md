# GadirTV — Windows Desktop IPTV Player

## Original problem statement
Create a Windows desktop IPTV application (.exe) using Electron + React that
connects to `http://gadir.co:80` via the Xtream Codes API
(`/player_api.php`). Requirements:
1. Multi-user profiles (save credentials, switch between profiles).
2. IPTV Smarters style layout with bottom nav, ordered category groups for
   Live TV / Movies / Series and a top banner with recently added content.
3. Working video player supporting MPEG-TS, AC3, EAC3, MPEG-2.
4. Installable Windows .exe.
5. Frameless window with custom title bar controls.

User language: Spanish.

## Architecture
- `frontend/`   React app (compiled with CRA and copied into Electron).
- `backend/`    FastAPI proxy used by the web preview only.
- `electron/`   Electron shell. Native mpv.exe embedded for playback.

### Playback
Chromium cannot decode AC3/EAC3/MPEG-2, so playback is delegated to a
bundled `mpv.exe`. Main process spawns mpv via IPC (`mpv:play` /
`mpv:kill`) and forwards the stream URL directly (no proxy).

### Xtream API networking (Feb 2026 fix)
Renderer requests to `http://gadir.co` from `file://` origin were being
silently dropped by Chromium even with `webSecurity: false`. All Xtream
API calls now route through Node.js in the main process via the
`xtream:get` IPC handler, using `User-Agent: VLC/3.0.20 LibVLC/3.0.20`.
This mirrors how VLC and IPTV Smarters talk to Xtream servers.

## Implemented
- Frameless Electron window with custom title-bar controls.
- Multi-profile login stored in `localStorage`.
- Live TV / Movies / Series categorised grid with recent-content banner.
- Hover effects showing VOD posters as background.
- Embedded mpv.exe playback for all IPTV codecs.
- Session reset + mpv kill on profile switch / quit.
- F5 / Ctrl+R reload shortcuts blocked to prevent accidental session wipe.
- NSIS installer + portable ZIP + encrypted portable ZIP.
- Backend endpoints for download distribution.
- **[Feb 2026]** Xtream API rerouted through Node.js main process to fix
  "connection error" on all tabs (Chromium blocking plain HTTP on file://).

## Backend download endpoints
- `GET /api/download/installer`      → GadirTV-Setup-1.0.0.exe
- `GET /api/download/installer_zip`  → GadirTV-Installer.zip
- `GET /api/download/portable`       → GadirTV-Windows-x64.zip
- `GET /api/download/encrypted`      → GadirTV-portable-encrypted.zip (pw `gadir`)

## Credentials for testing
Username `seismeses01` / Password `3d13zxs5oz` / Server `http://gadir.co:80`.
gadir.co blocks the Linux container's IP, so all IPTV runtime testing must
be done by the user on their Windows PC.

## Backlog / Future
- P2: refactor `frontend/src/App.js` (~988 lines) into smaller components
  (Player, HomeTab, CategorySection, ProfileSwitcher, Login, TitleBar).
- P2: optional user-editable Server URL in login for non-gadir.co Xtream
  subscriptions.
- P2: cache full VOD/Series catalogue in `localStorage` with TTL to speed
  up startup.
