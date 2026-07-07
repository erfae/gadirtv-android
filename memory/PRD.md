# GadirTV - Windows Desktop IPTV Client

## Problem Statement
Windows desktop IPTV client (.exe) for gadir.co Xtream Codes server:
- Multi-profile with add/delete
- IPTV Smarters style layout with bottom nav
- Live TV list view + preview with EPG + fullscreen on dbl-click
- Movies/Series detail modals with seasons/episodes
- MPEG-TS player with buffer + volume + fullscreen shortcuts
- Windows installer .exe (unsigned)

## Architecture
- Frontend: React (CRA) + mpegts.js + hls.js + axios
- Backend: FastAPI proxy (used only in browser preview; Electron talks direct)
- Desktop: Electron 31.3 with disabled webSecurity, direct gadir.co calls
- Package: manual electron+asar assembly + NSIS installer (Linux ARM64 host, no wine)

## Status (Feb 2026)
- Core UI complete (profiles, home, live, movies, series, player)
- Live preview with EPG, double-click fullscreen (via fsSignal effect)
- Player with volume slider, keyboard shortcuts, fullscreen button
- Home loads via first 3 categories with individual timeouts
- Profile switch forces remount via key={profile.username}
- Delivered via 4 formats: raw .exe, .exe in zip, portable zip, encrypted zip

## Known Limitations
- Some IPTV streams use codecs (AC3, EAC3) that Chromium can't decode → no audio for those channels. Not fixable without libVLC integration.
- Unsigned .exe → Windows SmartScreen / Chrome may block download unless via zip/encrypted zip.
- gadir.co rate-limits container IP → preview web doesn't work; .exe works from user PC.

## Files
- /app/frontend/src/App.js - main React app
- /app/frontend/src/api.js - dual-mode API (Electron direct vs backend proxy)
- /app/backend/server.py - FastAPI proxy + download endpoints
- /app/electron/main.js - Electron main with security disabled
- /app/electron/scripts/prepare.js - copies build to electron/app
- /app/electron/scripts/metadata.js - patches PE metadata via resedit
- /app/electron/installer.nsi - NSIS installer script

## Download URLs
- installer: /api/download/installer
- installer in zip: /api/download/installer_zip
- portable zip: /api/download/portable
- encrypted (pw gadir): /api/download/encrypted
