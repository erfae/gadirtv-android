# Build GadirTV universal emulator APK (ARM64 + x86_64).
$ErrorActionPreference = 'Stop'
Set-Location (Join-Path $PSScriptRoot '..')
Write-Host '=== GadirTV: APK emulador universal ==='
flutter pub get
$src = 'scripts\templates\GeneratedPluginRegistrant.minimal.java'
$dst = 'android\app\src\main\java\io\flutter\plugins\GeneratedPluginRegistrant.java'
Copy-Item -Force $src $dst
flutter build apk --release --target-platform=android-arm,android-arm64,android-x64 -PgtvEmulatorBuild=true
$out = 'build\app\outputs\flutter-apk\GadirTV-emulator.apk'
Copy-Item -Force 'build\app\outputs\flutter-apk\app-release.apk' $out
Write-Host ''
Write-Host "OK: $out"
Write-Host "Instalar: adb install -r $out"
