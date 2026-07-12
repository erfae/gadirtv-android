# Build GadirTV APK for Android Studio x86_64 emulators (Windows PowerShell).
$ErrorActionPreference = 'Stop'
Set-Location (Join-Path $PSScriptRoot '..')
Write-Host '=== GadirTV: APK emulador x86_64 ==='
flutter pub get
$src = 'android\app\src\main\java\io\flutter\plugins\GeneratedPluginRegistrant.minimal.java'
$dst = 'android\app\src\main\java\io\flutter\plugins\GeneratedPluginRegistrant.java'
Copy-Item -Force $src $dst
flutter build apk --release --target-platform=android-x64 -PgtvEmulatorBuild=true
$out = 'build\app\outputs\flutter-apk\GadirTV-emulator-x64-release.apk'
Copy-Item -Force 'build\app\outputs\flutter-apk\app-release.apk' $out
Write-Host ''
Write-Host "OK: $out"
Write-Host "Instalar: adb install -r $out"
