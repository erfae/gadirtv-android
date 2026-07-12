@echo off
setlocal
echo === Descargar GadirTV (TV Box) ===
set DEST=%USERPROFILE%\Downloads
if not "%~1"=="" set DEST=%~1
echo Guardando en: %DEST%
echo.

set URL=https://github.com/erfae/gadirtv-android/releases/latest/download/GadirTV-AndroidTV.apk
echo Descargando desde: %URL%
curl.exe -fL --retry 5 --retry-delay 3 -o "%DEST%\GadirTV-AndroidTV.apk" "%URL%"
if not errorlevel 1 goto :ok

echo.
echo Reintento con v2.4.1...
set URL=https://github.com/erfae/gadirtv-android/releases/download/v2.4.1/GadirTV-AndroidTV.apk
curl.exe -fL --retry 5 --retry-delay 3 -o "%DEST%\GadirTV-AndroidTV.apk" "%URL%"
if errorlevel 1 goto :fail

:ok
echo.
echo OK: %DEST%\GadirTV-AndroidTV.apk
echo Instalar: adb -d install -r "%DEST%\GadirTV-AndroidTV.apk"
goto :eof

:fail
echo.
echo ERROR 404 — abre en el navegador:
echo   https://github.com/erfae/gadirtv-android/releases
echo y descarga GadirTV-AndroidTV.apk manualmente.
exit /b 1
