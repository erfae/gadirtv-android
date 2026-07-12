#!/usr/bin/env bash
# Build TV Box APK (ARM). Default: 32-bit armeabi-v7a — works on most Android TVs.
set -euo pipefail
cd "$(dirname "$0")/.."
ABI="${1:-arm}"
flutter pub get
./scripts/restore-minimal-registrant.sh
case "$ABI" in
  arm|armv7|armv7a|32)
    flutter build apk --release --target-platform=android-arm
    cp -f build/app/outputs/flutter-apk/app-release.apk \
      build/app/outputs/flutter-apk/GadirTV-AndroidTV-armv7a.apk
    OUT=build/app/outputs/flutter-apk/GadirTV-AndroidTV-armv7a.apk
    ;;
  arm64|64)
    flutter build apk --release --target-platform=android-arm64
    cp -f build/app/outputs/flutter-apk/app-release.apk \
      build/app/outputs/flutter-apk/GadirTV-AndroidTV-arm64.apk
    OUT=build/app/outputs/flutter-apk/GadirTV-AndroidTV-arm64.apk
    ;;
  universal|all)
    flutter build apk --release --target-platform=android-arm,android-arm64
    cp -f build/app/outputs/flutter-apk/app-release.apk \
      build/app/outputs/flutter-apk/GadirTV-AndroidTV-universal.apk
    OUT=build/app/outputs/flutter-apk/GadirTV-AndroidTV-universal.apk
    ;;
  *)
    echo "Uso: $0 [arm|arm64|universal]" >&2
    exit 1
    ;;
esac
ls -lh "$OUT"
