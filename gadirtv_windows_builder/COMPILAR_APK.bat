@echo off
:: Gadir IPTV Player Android APK builder — auto-installs Flutter + Android SDK and
:: compiles the APK on a fresh Windows machine without any prior setup.
::
:: Usage: right-click → "Run as administrator".
title Gadir IPTV Player — Compilar APK Android

:: Ensure UTF-8 output so accented characters render correctly.
chcp 65001 >nul

:: Re-launch with elevated privileges if not already elevated. Downloads to
:: Program Files and SDK licence acceptance both need it on some systems.
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Solicitando permisos de administrador...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

cd /d "%~dp0"

echo.
echo ===============================================================
echo   Gadir IPTV Player Android APK Builder
echo   Duracion estimada: 15-20 minutos (descarga inicial ~3 GB)
echo ===============================================================
echo.
echo Pulsa cualquier tecla para empezar, o cierra esta ventana para cancelar.
pause >nul

powershell -ExecutionPolicy Bypass -NoProfile -File "%~dp0build.ps1"

echo.
echo ===============================================================
echo Proceso terminado. Pulsa cualquier tecla para cerrar.
echo ===============================================================
pause >nul
