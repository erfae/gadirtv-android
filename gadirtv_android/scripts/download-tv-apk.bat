@echo off
setlocal
echo === Descargar GadirTV para Android TV / TV Box ===
set DEST=%USERPROFILE%\Downloads
if not "%~1"=="" set DEST=%~1
set OUT=%DEST%\GadirTV-AndroidTV.apk
echo.
echo [1/1] APK TV (~51 MB)...
curl.exe -fL --retry 5 --retry-delay 3 -o "%OUT%" "https://github.com/erfae/gadirtv-android/releases/download/v2.4.3/GadirTV-AndroidTV.apk"
if errorlevel 1 goto :fail
echo.
echo OK: %OUT%
echo.
echo Instalar en TV Box (USB o adb):
echo   adb connect IP_DE_TU_TV:5555
echo   adb install -r "%OUT%"
goto :eof
:fail
echo ERROR. Abre: github.com/erfae/gadirtv-android/releases/tag/v2.4.3
exit /b 1
