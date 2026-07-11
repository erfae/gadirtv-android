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

- **Player:** `flutter_vlc_player` (libVLC backend) — mismo motor que XCIPTV Player, verificado compatible con Xiaomi Amlogic TV Boxes donde `media_kit` (libmpv) crasheaba. Soporta MPEG-TS/AC3/EAC3/HEVC/MKV con aceleración hardware nativa vía MediaCodec.
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
- ✅ **Phase 2 — Listas & categorías** *(Feb 2026)* — bottom-nav shell, Home con hero + rails, chips + grids
- ✅ **Phase 3 — Player (media_kit)** *(Feb 2026)* — full-screen mpv player, overlay auto-hide 3.5s, seek/volume/play-pause con D-pad, wakelock, error "SIN SEÑAL"
- ✅ **Phase 4 — Detalles + Resume** *(Feb 2026)* — MovieDetail + SeriesDetail (temporadas/episodios), ResumeStore JSON, rail "Continuar viendo" en Home, botones REPRODUCIR / CONTINUAR / Empezar de nuevo
- ✅ **Phase 5 — Android TV D-pad** *(Feb 2026)* — FocusTraversalGroup en shell, FocusableActionDetector en cada botón, arrow keys → seek/volume en player
- ✅ **Phase 6 — Release APK** *(Feb 2026)* — build.gradle con keystore condicional, ABI splits (armeabi-v7a + arm64-v8a + x86_64 + universal), SIGNING.md con instrucciones para Play Store
- ✅ **Extra — Favoritos** *(Feb 2026)* — FavoritesStore multi-tipo (live/movie/series) + chip "★ Favoritos" en las 3 pestañas + estrella tocable amarilla en cada poster
- ✅ **Extra — EPG "Ahora / Después"** *(Feb 2026)* — el player fetch `get_short_epg` al abrir un canal en directo y muestra programa actual + siguiente en la barra superior
- ✅ **Extra — Buscador global** *(Feb 2026)* — botón lupa en top-bar → pantalla con input + resultados en 3 secciones (Canales / Películas / Series), debounce 250 ms, filtrado client-side
- ✅ **Extra — Backup / Restore** *(Feb 2026)* — botón nube en top-bar exporta perfiles + favoritos + resume al portapapeles como JSON; se restaura pegando en otro dispositivo
- ✅ **v0.2.0 — Fix login 503 + UX** *(Feb 2026)*
  - **Login 503 fix:** ApiService ahora envía cabeceras idénticas al cliente Windows (`Accept: application/json, text/plain, */*`, `Accept-Encoding: identity`, `Connection: keep-alive`) y reintenta hasta 3 veces con backoff (400 ms, 800 ms) ante 503 / timeout / body vacío. Diagnóstico: gadir.co devuelve 503 a peticiones gzipped bajo carga; el header `Accept-Encoding: identity` desactiva gzip y replica el comportamiento del backend Electron.
  - **URL normalization:** el host se limpia (trim, strip trailing slash, add `http://` si falta) tanto al conectar como en cada request y stream URL.
  - **Show/hide password toggle:** botón de ojo en el input de contraseña del login.
  - **Icono GadirTV:** launcher icons regenerados en las 5 densidades desde `/app/electron/icon.png`, más `ic_launcher_round`, adaptive icon (foreground + background `#0B0C0F`) y `tv_banner` 320×180. Nombre app ya era "GadirTV".
  - **Build:** `pubspec.yaml` version 0.2.0+2.

- ✅ **v2.0.0 — Migración a libVLC** *(Feb 2026, fork)*
  - **Motor de video:** Sustituido `media_kit` (libmpv) → `flutter_vlc_player 7.4.4` (libVLC). Análisis forense de las APKs de XCIPTV, IBO Player y NetTV confirmó que las apps IPTV que funcionan en el Xiaomi Amlogic TV Box del usuario usan `libvlc.so` o `libffmpegJNI.so`+ExoPlayer — nunca libmpv. libVLC es el motor que garantiza compatibilidad con firmwares Amlogic antiguos.
  - **Archivos modificados:**
    - `pubspec.yaml`: quitados `media_kit`, `media_kit_video`, `media_kit_libs_android_video`; añadido `flutter_vlc_player ^7.4.4`.
    - `lib/main.dart`: eliminado `MediaKit.ensureInitialized()` (VLC inicializa lazy).
    - `lib/screens/player_screen.dart`: reescrito con `VlcPlayerController` — misma UX (overlay auto-hide, no-signal card, resume, EPG, D-pad, boxFit toggle).
    - `lib/screens/tabs/live_tab.dart`: `_MiniPlayer` migrado a `VlcPlayer` con `setMediaFromNetwork` para cambios de canal.
    - `android/app/build.gradle`: añadido `packagingOptions { pickFirst 'lib/**/libc++_shared.so' }` para resolver conflicto de C++ libs entre VLC y cronet.
    - `android/app/src/main/AndroidManifest.xml` + `AndroidManifest.tv.xml`: añadido `android:largeHeap="true"` (VLC requiere más memoria).
  - **User-Agent:** ahora se pasa vía `VlcHttpOptions.httpUserAgent()` en lugar de headers HTTP manuales (mantiene el bypass del 512 Block del servidor).
  - **Build:** `pubspec.yaml` version 2.0.0+31.
  - **Status:** Pendiente prueba en Xiaomi TV Box + móvil por parte del usuario, vía APK generado por GitHub Actions.


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
