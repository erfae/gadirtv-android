# GadirTV Android — PRD (Product Requirements Document)

**Status:** Phase 0 & 1 complete — pending user testing on real device.
**Started:** February 2026
**Base:** Ports GadirTV Windows v1.13 (React + Electron + mpv) to Android (Flutter + media_kit/libmpv).

---

## 1. Original problem statement

> "no cierro el proyecto, por que quiero abrir uno nuevo basado en este, seria una migracion de esta aplicacion de windows a Android, necesito saber el tiempo y coste del proyecto"

User decisions confirmed:
- **Stack:** Flutter
- **Targets:** Móvil/Tablet Android + Android TV / TV Box / Fire TV
- **Orientation:** Landscape only
- **Package name:** `com.gadir.tv` *(assumed default — user skipped)*
- **App name:** `GadirTV` *(assumed default)*
- **Build service:** GitHub Actions *(assumed default)*

---

## 2. Feature parity target (with Windows v1.13)

| Feature | Windows | Android |
|---|---|---|
| Multi-profile picker (Netflix-style) | ✅ v1.0 | ✅ Phase 1 |
| Xtream login (host / user / pass) | ✅ | ✅ Phase 1 |
| Auto-login last active profile | ✅ | ✅ Phase 1 |
| Live TV categories + channel grid | ✅ | ✅ Phase 2 |
| Movies (VOD) categories + grid | ✅ | ✅ Phase 2 |
| Series categories + seasons/episodes | ✅ | 🟡 Ph2 (list) / Ph4 (episodes) |
| Top banner: recently-added movies/series | ✅ | ✅ Phase 2 |
| Video player (MPEG-TS, AC3, EAC3, HEVC) | ✅ mpv | ⬜ Phase 3 (media_kit / libmpv) |
| Custom player controls overlay | ✅ | ⬜ Phase 3 |
| Global hotkeys | ✅ (kb) | ⬜ Phase 3 (D-pad) |
| Movie/Series details (sinopsis, cast, rating) | ✅ v1.13 | ⬜ Phase 4 |
| Resume playback | ✅ | ⬜ Phase 4 |
| Android TV LEANBACK launcher | N/A | ⬜ Phase 5 |
| D-pad focus management | N/A | ⬜ Phase 5 |
| Signed release APK | N/A | ⬜ Phase 6 |

---

## 3. Architecture

```
gadirtv_android/
├── android/                           # Manifest, gradle, network security
├── lib/
│   ├── main.dart                      # Bootstrap, landscape lock, router
│   ├── theme.dart                     # Colors, typography
│   ├── models/profile.dart
│   ├── services/
│   │   ├── api_service.dart           # Dio → player_api.php
│   │   └── profile_store.dart         # shared_preferences (keys: gp, ga)
│   └── screens/
│       ├── profiles_screen.dart       # "Who is watching?"
│       ├── login_screen.dart          # Add profile / connect
│       └── home_screen.dart           # Phase-2 target (placeholder now)
└── .github/workflows/build-apk.yml    # CI: builds release + debug APKs
```

### Key technical decisions

- **Player:** `media_kit` (libmpv backend) — same engine as the Windows app, guaranteed MPEG-TS/AC3/EAC3/HEVC support without vendor-specific quirks.
- **HTTP:** `dio` with a VLC User-Agent (Xtream servers occasionally block plain Dart/OkHttp UAs).
- **Persistence:** `shared_preferences` with the same JSON shape used by Windows (`gp` = profile list, `ga` = active). Migration between platforms is trivial if ever needed.
- **Router:** `go_router` — declarative, easy to extend when we add per-episode deep links in Phase 4.
- **Cleartext HTTP:** `network_security_config.xml` allows plain HTTP globally (gadir.co is port 80). Restrict later if we ever go HTTPS-only.

### Why no local build?

The Emergent container is 1.5 GB free; Flutter SDK + Android SDK would need ~12 GB. **Every build goes through GitHub Actions** (workflow provided). User pushes via "Save to Github" → CI produces `app-release.apk` as a downloadable artifact.

---

## 4. Roadmap

- ✅ **Phase 0 — Setup** *(Feb 2026)*
- ✅ **Phase 1 — Login + Perfiles** *(Feb 2026)*
- ✅ **Phase 2 — Listas & categorías** *(Feb 2026)* — bottom-nav shell (Inicio / TV / Películas / Series), Home con hero rotativo + rails de "Recientes", category chips + grids infinitos con posters (cached_network_image). Focus D-pad básico ya cableado en PosterCard y CategoryChip.
- 🟡 **Phase 3 — Player (media_kit)** with custom overlay controls (play/pause, seek, volume, EPG side panel)
- ⬜ **Phase 4 — Detalles + Resume** (sinopsis, cast, star rating, per-episode resume position)
- ⬜ **Phase 5 — Android TV / Fire TV** (D-pad focus rings, leanback launcher optimization)
- ⬜ **Phase 6 — Release signed APK** (keystore setup, versionCode bump automation)

---

## 5. Known constraints / risks

- **`media_kit` APK bloat:** libmpv adds ~30 MB per ABI. Ship split APKs per ABI to keep download size < 30 MB.
- **Xtream server IP-blocks Linux containers:** we cannot smoke-test the API from CI, only from the user's device. User is the sole tester.
- **Android TV D-pad in Flutter:** requires manual `FocusNode` wiring for every interactive widget. Plan for extra time in Phase 5.

---

## 6. Testing

- **This session:** Static analysis only (`flutter analyze` in CI). No emulator available in the container.
- **User acceptance:** User installs the APK from the GitHub Actions artifact, launches on their target device (phone + TV Box), verifies:
  1. App opens in landscape.
  2. Login form appears on first launch.
  3. Real Xtream credentials succeed → home placeholder shows "Conectado correctamente".
  4. Kill/reopen app → auto-jumps back to home (active profile persisted).
  5. Add a second profile → picker appears on next launch.

---

## 7. Credentials for testing

```
Server:   http://gadir.co:80
Username: seismeses01
Password: 3d13zxs5oz
```
