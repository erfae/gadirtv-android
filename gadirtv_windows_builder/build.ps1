# GadirTV Android APK builder for Windows.
#
# Downloads OpenJDK 17, Flutter SDK, Android command-line tools, accepts the
# SDK licences, installs the required platform/build-tools/NDK, then invokes
# `flutter build apk --release --split-per-abi` on the local project.
#
# All downloads land in `C:\GadirTVBuild\` — deleting that folder frees the
# ~10 GB used and leaves the user's system untouched.

$ErrorActionPreference = 'Stop'
$ProgressPreference    = 'Continue'

$WORK       = 'C:\GadirTVBuild'
$JDK_DIR    = "$WORK\jdk17"
$FLUTTER    = "$WORK\flutter"
$SDK        = "$WORK\android-sdk"
$SRC        = Join-Path (Split-Path -Parent $PSCommandPath) 'gadirtv_android'
$PROJECT    = "$WORK\project"

$JDK_URL     = 'https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.11%2B9/OpenJDK17U-jdk_x64_windows_hotspot_17.0.11_9.zip'
$FLUTTER_URL = 'https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.24.5-stable.zip'
$SDK_URL     = 'https://dl.google.com/android/repository/commandlinetools-win-11076708_latest.zip'

# ---------- helpers ------------------------------------------------------------

function Say([string]$msg, [ConsoleColor]$col = 'White') {
    Write-Host "`n$msg" -ForegroundColor $col
}

function Step([int]$n, [string]$title) {
    Write-Host "`n=== [$n/8] $title ===" -ForegroundColor Cyan
}

function Download([string]$url, [string]$dest) {
    if (Test-Path $dest) {
        Say "Ya descargado: $(Split-Path -Leaf $dest)" 'DarkGray'
        return
    }
    Say "Descargando $(Split-Path -Leaf $dest)..." 'Yellow'
    Invoke-WebRequest -Uri $url -OutFile $dest -UseBasicParsing
}

function Extract([string]$zip, [string]$dest) {
    if (Test-Path $dest) {
        Say "Ya extraido: $(Split-Path -Leaf $dest)" 'DarkGray'
        return
    }
    Say "Extrayendo $(Split-Path -Leaf $zip)..." 'Yellow'
    Expand-Archive -LiteralPath $zip -DestinationPath $dest -Force
}

# ---------- prerequisites ------------------------------------------------------

if (-not (Test-Path $SRC)) {
    Say "ERROR: no encuentro la carpeta del proyecto en $SRC" 'Red'
    Say "Este script debe estar junto a la carpeta 'gadirtv_android/'." 'Red'
    exit 1
}

$driveFree = (Get-PSDrive C).Free / 1GB
if ($driveFree -lt 10) {
    Say "AVISO: solo hay $([math]::Round($driveFree,1)) GB libres en C: (se recomiendan 10 GB)." 'Yellow'
    Say "Puedes continuar bajo tu propia responsabilidad." 'Yellow'
    Read-Host "Enter para seguir, Ctrl+C para abortar"
}

New-Item -ItemType Directory -Force -Path $WORK | Out-Null

# ---------- 1. JDK 17 ----------------------------------------------------------

Step 1 'OpenJDK 17'
Download $JDK_URL "$WORK\jdk.zip"
if (-not (Test-Path $JDK_DIR)) {
    Extract "$WORK\jdk.zip" "$WORK\jdk-tmp"
    $inner = Get-ChildItem "$WORK\jdk-tmp" -Directory | Select-Object -First 1
    Move-Item -Path $inner.FullName -Destination $JDK_DIR
    Remove-Item "$WORK\jdk-tmp" -Recurse -Force
}
$env:JAVA_HOME = $JDK_DIR
$env:PATH      = "$JDK_DIR\bin;$env:PATH"
& java -version

# ---------- 2. Flutter ---------------------------------------------------------

Step 2 'Flutter SDK 3.24.5'
Download $FLUTTER_URL "$WORK\flutter.zip"
if (-not (Test-Path $FLUTTER)) {
    Extract "$WORK\flutter.zip" $WORK
}
$env:PATH = "$FLUTTER\bin;$env:PATH"
& flutter --disable-analytics config --no-analytics | Out-Null
& flutter --version

# ---------- 3. Android SDK cmdline-tools --------------------------------------

Step 3 'Android SDK cmdline-tools'
Download $SDK_URL "$WORK\sdk.zip"
if (-not (Test-Path "$SDK\cmdline-tools\latest")) {
    New-Item -ItemType Directory -Force -Path "$SDK\cmdline-tools" | Out-Null
    Extract "$WORK\sdk.zip" "$SDK\cmdline-tools\_extract"
    Move-Item "$SDK\cmdline-tools\_extract\cmdline-tools" "$SDK\cmdline-tools\latest"
    Remove-Item "$SDK\cmdline-tools\_extract" -Recurse -Force
}
$env:ANDROID_HOME     = $SDK
$env:ANDROID_SDK_ROOT = $SDK
$env:PATH             = "$SDK\cmdline-tools\latest\bin;$SDK\platform-tools;$env:PATH"

# ---------- 4. Accept licences + install SDK packages -------------------------

Step 4 'Aceptar licencias e instalar componentes SDK'
$licenceScript = "$WORK\accept.ps1"
'"y`ny`ny`ny`ny`ny`ny`ny`ny`ny`n" | & "$SDK\cmdline-tools\latest\bin\sdkmanager.bat" --licenses' | Out-File -Encoding ASCII $licenceScript
try {
    'y' * 20 | & "$SDK\cmdline-tools\latest\bin\sdkmanager.bat" --licenses | Out-Null
} catch { }
& "$SDK\cmdline-tools\latest\bin\sdkmanager.bat" `
    "platform-tools" `
    "platforms;android-34" `
    "build-tools;34.0.0" `
    "ndk;25.1.8937393" | Out-Null

# ---------- 5. Copy project into working dir ----------------------------------

Step 5 'Copiar el proyecto a la carpeta de compilacion'
if (Test-Path $PROJECT) { Remove-Item $PROJECT -Recurse -Force }
Copy-Item -Path $SRC -Destination $PROJECT -Recurse

# ---------- 6. flutter pub get ------------------------------------------------

Step 6 'Descargando dependencias Flutter'
Push-Location $PROJECT
& flutter pub get
if ($LASTEXITCODE -ne 0) { throw 'flutter pub get fallo' }

# ---------- 7. Configure Flutter to see the Android SDK -----------------------

Step 7 'Vinculando Flutter con el Android SDK'
& flutter config --android-sdk $SDK | Out-Null
& flutter doctor -v | Select-Object -First 30 | Write-Host

# ---------- 8. Build APKs -----------------------------------------------------

Step 8 'Compilando APKs release ARM (movil + TV Box, sin x86 emulador)'
& flutter build apk --release --split-per-abi --target-platform=android-arm,android-arm64
if ($LASTEXITCODE -ne 0) { throw 'flutter build apk fallo' }

$apkDir  = Join-Path $PROJECT 'build\app\outputs\flutter-apk'
$desktop = [Environment]::GetFolderPath('Desktop')
$outDir  = Join-Path $desktop 'GadirTV-APKs'
New-Item -ItemType Directory -Force -Path $outDir | Out-Null
Get-ChildItem "$apkDir\app-*-release.apk" | Copy-Item -Destination $outDir -Force
Pop-Location

Say "==== APK GENERADO CON EXITO ====" 'Green'
Say "APKs copiados a: $outDir" 'Green'
Say "TV Box: prueba `"app-armeabi-v7a-release.apk`" primero. Movil: `"app-arm64-v8a-release.apk`"." 'Green'

# Open the folder in Explorer for the user
Start-Process explorer.exe $outDir
