@echo off
setlocal
cd /d "%~dp0\.."
set ABI=%~1
if "%ABI%"=="" set ABI=arm
echo === GadirTV: APK Android TV (%ABI%) ===
call flutter pub get
if errorlevel 1 goto :fail
copy /Y "scripts\templates\GeneratedPluginRegistrant.minimal.java" "android\app\src\main\java\io\flutter\plugins\GeneratedPluginRegistrant.java" >nul
if errorlevel 1 goto :fail
if /I "%ABI%"=="arm64" goto :arm64
if /I "%ABI%"=="64" goto :arm64
if /I "%ABI%"=="universal" goto :universal
if /I "%ABI%"=="all" goto :universal
call flutter build apk --release --target-platform=android-arm
if errorlevel 1 goto :fail
copy /Y "build\app\outputs\flutter-apk\app-release.apk" "build\app\outputs\flutter-apk\GadirTV-AndroidTV-armv7a.apk"
echo OK: build\app\outputs\flutter-apk\GadirTV-AndroidTV-armv7a.apk
goto :eof
:arm64
call flutter build apk --release --target-platform=android-arm64
if errorlevel 1 goto :fail
copy /Y "build\app\outputs\flutter-apk\app-release.apk" "build\app\outputs\flutter-apk\GadirTV-AndroidTV-arm64.apk"
echo OK: build\app\outputs\flutter-apk\GadirTV-AndroidTV-arm64.apk
goto :eof
:universal
call flutter build apk --release --target-platform=android-arm,android-arm64
if errorlevel 1 goto :fail
copy /Y "build\app\outputs\flutter-apk\app-release.apk" "build\app\outputs\flutter-apk\GadirTV-AndroidTV-universal.apk"
echo OK: build\app\outputs\flutter-apk\GadirTV-AndroidTV-universal.apk
goto :eof
:fail
echo ERROR: compilacion fallida.
exit /b 1
