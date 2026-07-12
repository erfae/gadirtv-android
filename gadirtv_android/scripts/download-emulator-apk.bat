@echo off
setlocal
echo === Descargar GadirTV para EMULADOR ===
set DEST=%USERPROFILE%\Downloads
if not "%~1"=="" set DEST=%~1
set OUT=%DEST%\GadirTV-emulator.apk
echo Guardando en: %OUT%
echo.
curl.exe -fL --retry 5 --retry-delay 3 -o "%OUT%" "https://github.com/erfae/gadirtv-android/releases/download/v2.3.12/GadirTV-emulator.apk"
if errorlevel 1 goto :fail
echo.
echo OK. Tamano esperado: ~25-35 MB
echo Instalar: adb install -r "%OUT%"
goto :eof
:fail
echo ERROR. Abre: github.com/erfae/gadirtv-android/releases
exit /b 1
