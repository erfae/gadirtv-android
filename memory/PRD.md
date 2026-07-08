# GadirTV — PRD

## Original problem statement
Windows desktop IPTV app (`.exe`) built with Electron + React that
connects to `http://gadir.co:80` (Xtream Codes API):
1. Multi-user profile support (save credentials, switch between).
2. IPTV Smarters style layout: bottom nav, ordered groups (Live/Movies/
   Series), top banner with recently added.
3. Video player compatible with MPEG-TS, AC3, EAC3, MPEG-2.
4. Installable Windows `.exe`.
5. Frameless window with custom title bar controls.

User's preferred language: Spanish.

## Current status — v1.13 (definitive)

### Delivered
- Frameless Electron window, custom title bar (min/max/close).
- Full-screen kiosk mode covering the Windows taskbar.
- Multi-profile login (localStorage).
- Home Netflix-style: rotating hero + Movies/Series recently added rails.
- Live TV / Movies / Series categorised grids + preview panel.
- Embedded mpv player inside the app window (via `--wid=<HWND>`).
- Native mpv OSC (progress bar, play/pause/seek).
- Volume up to 200 % with software amplification.
- Custom Volver button + Esc/Backspace exit.
- Last-played channel restored on next TV visit.
- Sinopsis + star rating + cast/director on movie & series detail.
- Error suppression: noisy media errors replaced with "SIN SEÑAL"
  overlay when a channel really fails.
- Xtream API requests routed via Node.js (bypasses Chromium blocking).
- Automatic retries when `gadir.co` returns empty responses.
- NSIS installer + portable ZIP + encrypted ZIP + source ZIP + docs.

### Not implemented (out of scope)
- Android build.
- EPG guide.
- Recording.
- Cast to TV / remote control.

---

## Companion project — GadirTV Android (Flutter)

**Started:** Feb 2026. Migration of the Windows client to Android
(Móvil + Tablet + Android TV / TV Box / Fire TV).

- **Location:** `/app/gadirtv_android/`
- **PRD:** `/app/memory/PRD_ANDROID.md`
- **Stack:** Flutter · `media_kit` (libmpv) · `dio` · `shared_preferences` · `go_router`
- **Build:** GitHub Actions (`.github/workflows/build-apk.yml`) — Emergent
  container is too small (<1.5 GB free) to install Flutter+Android SDK,
  so APKs are compiled by CI on push. User downloads the artifact.

### Phases
- ✅ Phase 0 — Scaffold + CI
- ✅ Phase 1 — Login + Multi-perfil
- ✅ Phase 2 — Listas & categorías (Live/Movies/Series) + Home hero
- ✅ Phase 3 — Player media_kit + controles overlay + wakelock
- ✅ Phase 4 — Detalles VOD/Series + ResumeStore + "Continuar viendo"
- ✅ Phase 5 — D-pad Android TV (FocusTraversalGroup + arrow-key player)
- ✅ Phase 6 — Release APK con ABI splits + doc SIGNING.md para keystore Play Store
- ✅ Extra — Favoritos en Live TV (chip "★ Favoritos" + estrella amarilla por canal)
- ⬜ Phase 4 — Detalles VOD/Series + resume
- ⬜ Phase 5 — Android TV D-pad focus
- ⬜ Phase 6 — Release APK firmado

## Backend endpoints
- `GET /api/download/installer`     → `.exe` installer
- `GET /api/download/installer_zip` → `.exe` wrapped in ZIP
- `GET /api/download/portable`      → portable ZIP
- `GET /api/download/encrypted`     → password-protected portable ZIP (pw `gadir`)
- `GET /api/download/source`        → full source code ZIP
- `GET /api/download/docs`          → technical docs (Markdown)

## Test credentials
- Server: `http://gadir.co:80`
- Username: `seismeses01`
- Password: `3d13zxs5oz`

Note: gadir.co blocks the Linux container IP so all runtime IPTV
testing has to be performed by the user on their Windows PC.
