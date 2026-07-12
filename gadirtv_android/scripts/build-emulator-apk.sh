#!/usr/bin/env bash
# Build ONE universal APK for Android Studio emulators (ARM64 + x86_64).
set -euo pipefail
cd "$(dirname "$0")/.."
flutter pub get
./scripts/restore-minimal-registrant.sh
flutter build apk --release --target-platform=android-arm64,android-x64 -PgtvEmulatorBuild=true
cp -f build/app/outputs/flutter-apk/app-release.apk \
  build/app/outputs/flutter-apk/GadirTV-emulator.apk
ls -lh build/app/outputs/flutter-apk/GadirTV-emulator.apk
echo "Instalar: adb install -r build/app/outputs/flutter-apk/GadirTV-emulator.apk"
