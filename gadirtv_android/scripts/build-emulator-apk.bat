@echo off
setlocal
cd /d "%~dp0\.."
echo === GadirTV: APK emulador x86_64 ===
call flutter pub get
if errorlevel 1 goto :fail
copy /Y "scripts\templates\GeneratedPluginRegistrant.minimal.java" "android\app\src\main\java\io\flutter\plugins\GeneratedPluginRegistrant.java" >nul
if errorlevel 1 goto :fail
call flutter build apk --release --target-platform=android-x64 -PgtvEmulatorBuild=true
if errorlevel 1 goto :fail
copy /Y "build\app\outputs\flutter-apk\app-release.apk" "build\app\outputs\flutter-apk\GadirTV-emulator-x64-release.apk"
if errorlevel 1 goto :fail
echo.
echo OK: build\app\outputs\flutter-apk\GadirTV-emulator-x64-release.apk
echo Instalar: adb install -r build\app\outputs\flutter-apk\GadirTV-emulator-x64-release.apk
goto :eof
:fail
echo.
echo ERROR: compilacion fallida. Revisa que Flutter y Android SDK esten instalados.
exit /b 1
