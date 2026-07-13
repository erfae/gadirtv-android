@echo off
chcp 65001 >nul
setlocal
title GadirTV — Compilar APK Android TV

cd /d "%~dp0"
echo.
echo ===============================================================
echo   GadirTV — Compilar APK para Android TV / TV Box
echo   Version en pubspec.yaml (login): ver gadirtv_android\pubspec.yaml
echo ===============================================================
echo.

where flutter >nul 2>&1
if errorlevel 1 goto :no_flutter

where java >nul 2>&1
if errorlevel 1 goto :no_java

echo [1/2] Comprobando Flutter...
call flutter --version
if errorlevel 1 goto :fail

echo.
echo [2/2] Compilando APK TV (arm 32-bit — la mayoria de TV Box)...
call scripts\build-tv-apk.bat %*
if errorlevel 1 goto :fail

echo.
echo ===============================================================
echo   COMPILACION OK
echo   APK: build\app\outputs\flutter-apk\GadirTV-AndroidTV-armv7a.apk
echo ===============================================================
echo.
if exist "build\app\outputs\flutter-apk\GadirTV-AndroidTV-armv7a.apk" (
  explorer /select,"%CD%\build\app\outputs\flutter-apk\GadirTV-AndroidTV-armv7a.apk"
)
pause
exit /b 0

:no_flutter
echo ERROR: Flutter no esta en el PATH.
echo.
echo Opciones:
echo   A) Instala Flutter 3.24+ y JDK 17, luego vuelve a ejecutar este .bat
echo   B) Sin compilar: ejecuta scripts\download-tv-apk.bat
echo      (descarga el APK ya compilado desde GitHub)
echo.
pause
exit /b 1

:no_java
echo ERROR: Java (JDK) no esta en el PATH.
echo Instala JDK 17 (Temurin 17) y reinicia la ventana de comandos.
echo.
pause
exit /b 1

:fail
echo.
echo ERROR: la compilacion fallo.
echo Copia el texto rojo de arriba y pegalo en el chat para diagnosticar.
echo.
echo Si no quieres compilar, descarga el APK listo:
echo   scripts\download-tv-apk.bat
echo.
pause
exit /b 1
