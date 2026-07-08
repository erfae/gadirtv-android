# GadirTV — Android (Flutter)

Port of the GadirTV Windows IPTV client to Android (Mobile, Tablet, Android TV, Fire TV).

## Stack

- **Framework:** Flutter (Dart)
- **Player:** [media_kit](https://pub.dev/packages/media_kit) — libmpv-backed, same engine as the Windows app. Supports MPEG-TS, AC3, EAC3, HEVC natively.
- **State:** Provider
- **Router:** go_router
- **API:** Xtream Codes `player_api.php` on `http://gadir.co:80`

## Project structure

```
gadirtv_android/
├── android/                  # Android platform config (manifest, gradle)
├── lib/
│   ├── main.dart             # App entry, landscape lock, router
│   ├── theme.dart            # Colors, typography
│   ├── models/               # Profile, Category, Stream, Series, Movie
│   ├── services/
│   │   ├── api_service.dart      # Xtream API client (dio)
│   │   └── profile_store.dart    # Multi-profile persistence (shared_preferences)
│   └── screens/
│       ├── profiles_screen.dart  # "Who is watching?" selector
│       ├── login_screen.dart     # Add profile / connect to Xtream
│       └── home_screen.dart      # Placeholder — Phase 2 target
├── .github/workflows/build-apk.yml   # CI: builds release + debug APKs
├── pubspec.yaml
└── README.md
```

## Building the APK

**You don't need to install Flutter locally.** Compilation happens on GitHub Actions.

### First-time setup

1. Push this repo to GitHub via Emergent's "Save to Github" button.
2. Open your repo on github.com → tab **Actions** → enable workflows if prompted.

### Every subsequent build

1. Push any change (or trigger manually: **Actions → Build Android APK → Run workflow**).
2. Wait ~5–8 minutes for the workflow to finish.
3. Open the completed run → download the **APK artifact** (zip) at the bottom.
4. Unzip → transfer `app-release.apk` to your Android device → install.

### Local build (optional, requires Flutter + Android SDK)

```bash
cd gadirtv_android
flutter pub get
flutter build apk --release
# Output: build/app/outputs/flutter-apk/app-release.apk
```

## Roadmap

- ✅ **Phase 0:** Project scaffold, CI, docs.
- ✅ **Phase 1:** Login + multi-profile persistence.
- 🟡 **Phase 2:** Categories & lists (Live / Movies / Series).
- ⬜ **Phase 3:** Player (media_kit) with custom controls.
- ⬜ **Phase 4:** Details + resume playback.
- ⬜ **Phase 5:** Android TV / Fire TV D-pad focus.
- ⬜ **Phase 6:** Signed release APK.
