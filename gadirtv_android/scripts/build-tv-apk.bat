@echo off
setlocal EnableExtensions
cd /d "%~dp0\.."
set ABI=%~1
if "%ABI%"=="" set ABI=arm

echo === GadirTV: APK Android TV (%ABI%) ===

where flutter >nul 2>&1
if errorlevel 1 (
  echo ERROR: Flutter no esta en el PATH. Ejecuta desde gadirtv_android\COMPILAR_TV.bat
  exit /b 1
)

echo Restaurando GeneratedPluginRegistrant minimo...
if not exist "scripts\templates\GeneratedPluginRegistrant.minimal.java" (
  echo ERROR: falta scripts\templates\GeneratedPluginRegistrant.minimal.java
  exit /b 1
)

call flutter pub get
if errorlevel 1 goto :fail

copy /Y "scripts\templates\GeneratedPluginRegistrant.minimal.java" "android\app\src\main\java\io\flutter\plugins\GeneratedPluginRegistrant.java" >nul
if errorlevel 1 goto :fail

findstr /I /C:"fluttervlcplayer" "android\app\src\main\java\io\flutter\plugins\GeneratedPluginRegistrant.java" >nul
if not errorlevel 1 (
  echo ERROR: GeneratedPluginRegistrant sigue registrando libVLC. Vuelve a copiar el template minimo.
  exit /b 1
)

if /I "%ABI%"=="arm64" goto :arm64
if /I "%ABI%"=="64" goto :arm64
if /I "%ABI%"=="universal" goto :universal
if /I "%ABI%"=="all" goto :universal

call flutter build apk --release --target-platform=android-arm
if errorlevel 1 goto :fail
if not exist "build\app\outputs\flutter-apk\app-release.apk" (
  echo ERROR: no se genero app-release.apk
  exit /b 1
)
copy /Y "build\app\outputs\flutter-apk\app-release.apk" "build\app\outputs\flutter-apk\GadirTV-AndroidTV-armv7a.apk"
copy /Y "build\app\outputs\flutter-apk\app-release.apk" "build\app\outputs\flutter-apk\GadirTV-AndroidTV.apk"
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
echo.
echo ERROR: compilacion fallida.
echo Revisa: Flutter 3.24+, JDK 17, Android SDK (flutter doctor).
exit /b 1
