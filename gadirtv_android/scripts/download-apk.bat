@echo off
setlocal
echo === Descargar GadirTV v2.3.9 ===
set DEST=%USERPROFILE%\Downloads
if not "%~1"=="" set DEST=%~1
echo Guardando en: %DEST%
echo.
echo [1/1] TV Box APK (~52 MB)...
curl.exe -fL --retry 3 --retry-delay 2 -o "%DEST%\GadirTV-AndroidTV.apk" "https://github.com/erfae/gadirtv-android/releases/download/v2.3.9/GadirTV-AndroidTV.apk"
if errorlevel 1 goto :fail
echo.
echo OK: %DEST%\GadirTV-AndroidTV.apk
echo.
echo Instalar en TV:
echo   adb -d uninstall com.gadir.tv
echo   adb -d install -r "%DEST%\GadirTV-AndroidTV.apk"
goto :eof
:fail
echo.
echo ERROR: no se pudo descargar. Prueba:
echo   1. Abre en el navegador: github.com/erfae/gadirtv-android/releases
echo   2. Clic en GadirTV 2.3.9 -^> GadirTV-AndroidTV.apk
exit /b 1
