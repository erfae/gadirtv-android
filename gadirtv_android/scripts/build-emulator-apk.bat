@echo off
setlocal
cd /d "%~dp0\.."
echo === GadirTV: APK emulador universal (ARM64 + x86_64) ===
call flutter pub get
if errorlevel 1 goto :fail
copy /Y "scripts\templates\GeneratedPluginRegistrant.minimal.java" "android\app\src\main\java\io\flutter\plugins\GeneratedPluginRegistrant.java" >nul
if errorlevel 1 goto :fail
call flutter build apk --release --target-platform=android-arm,android-arm64,android-x64 -PgtvEmulatorBuild=true
if errorlevel 1 goto :fail
copy /Y "build\app\outputs\flutter-apk\app-release.apk" "build\app\outputs\flutter-apk\GadirTV-emulator.apk"
if errorlevel 1 goto :fail
echo.
echo OK: build\app\outputs\flutter-apk\GadirTV-emulator.apk
echo Instalar: adb install -r build\app\outputs\flutter-apk\GadirTV-emulator.apk
goto :eof
:fail
echo ERROR: compilacion fallida.
exit /b 1
