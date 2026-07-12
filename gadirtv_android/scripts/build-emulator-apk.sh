#!/usr/bin/env bash
# Build the ONLY APK that runs on Android Studio x86_64 emulators.
set -euo pipefail
cd "$(dirname "$0")/.."
flutter pub get
./scripts/restore-minimal-registrant.sh
flutter build apk --release --target-platform=android-x64 -PgtvEmulatorBuild=true
cp -f build/app/outputs/flutter-apk/app-release.apk \
  build/app/outputs/flutter-apk/GadirTV-emulator-x64-release.apk
ls -lh build/app/outputs/flutter-apk/GadirTV-emulator-x64-release.apk
echo "Instalar: adb install -r build/app/outputs/flutter-apk/GadirTV-emulator-x64-release.apk"
