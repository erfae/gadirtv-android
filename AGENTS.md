# AGENTS.md

## Cursor Cloud specific instructions

### What this repo is
GadirTV is an IPTV client for the `gadir.co` Xtream Codes server. The repo has multiple delivery targets that share one React UI:
- `frontend/` — React 19 (CRACO/react-scripts, Yarn) UI. **Runnable here.**
- `backend/` — FastAPI proxy (`server.py`) that relays/streams `gadir.co` for the browser preview (routes prefixed `/api`, port `8001`). **Runnable here.** No database is used despite the base image name (no Mongo needed).
- `electron/` — Windows desktop wrapper (bundles `mpv.exe`). Windows-only, **not runnable here**.
- `gadirtv_android/` — Flutter/Dart Android port. Built via GitHub Actions (`.github/workflows/build-apk.yml`), **not buildable in this container**.

The runnable end-to-end product in this environment is the **web preview = FastAPI backend + React frontend**.

### Running the services (dev mode)
- Backend: from `backend/`, run `python3 -m uvicorn server:app --host 0.0.0.0 --port 8001 --reload`. (`pip` installs console scripts to `~/.local/bin`, which is not on PATH — invoke via `python3 -m` to be safe.)
- Frontend: from `frontend/`, run `yarn start` (CRACO dev server on port `3000`).

### Required config (not committed — `.env` is gitignored)
`frontend/.env` **must** exist with `REACT_APP_BACKEND_URL` pointing at the backend, or the browser build cannot reach the proxy:
```
REACT_APP_BACKEND_URL=http://localhost:8001
```
Recreate this file if it is missing on a fresh VM. In Electron desktop mode the frontend talks to `gadir.co` directly and ignores this, but that mode does not run here.

### External dependency & test credentials
The app is useless without outbound access to `http://gadir.co:80` (the real content source). Xtream test credentials (from `gadirtv_windows_builder/LEEME.txt`): user `seismeses01` / pass `3d13zxs5oz`. The account has `max_connections: 1`, so a live stream may fail if another session is already streaming.

### Lint / test / build notes
- **Lint**: there is no `lint` script and no standalone ESLint config; linting runs through the react-scripts/CRACO build pipeline (ESLint config is inline in `frontend/craco.config.js`). Warnings surface in the `yarn start` / `yarn build` output. `App.js` currently emits two `react-hooks/exhaustive-deps` warnings (non-blocking).
- **Tests**: `backend/pytest.ini` mandates `pytest-xdist` and pins `addopts = -n 2 --dist loadscope` — do NOT modify `addopts`. Run backend tests with `cd backend && python3 -m pytest`. There are currently no test files in the repo (0 collected). There is no frontend test suite.
- **Frontend build**: `cd frontend && CI=false GENERATE_SOURCEMAP=false yarn build` (only needed for the Electron packaging flow, see `DOCUMENTATION.md` §7).
