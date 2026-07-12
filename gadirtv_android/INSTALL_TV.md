# Instalar GadirTV en Android TV / TV Box

Si al instalar ves **"La app no es compatible con tu TV"** o **"No se ha instalado la aplicación"**, sigue estos pasos en orden.

## 1. Descarga el APK correcto

En **GitHub Actions → Build Android APK → build-tv**, descarga según tu dispositivo:

| Artefacto | Cuándo usarlo |
|---|---|
| **`GadirTV-AndroidTV-armv7a`** | **Empieza por este.** La mayoría de TV Box y Android TV (Xiaomi, ONN, Hisense, Chromecast, Fire TV…) usan Android **32-bit**. |
| `GadirTV-AndroidTV-arm64` | Solo si tu TV es **64-bit real** (p. ej. Nvidia Shield). |
| `GadirTV-AndroidTV-universal` | Incluye 32 y 64 bits en un solo APK (más grande, pero sirve si no sabes cuál elegir). |
| `GadirTV-AndroidTV-DEBUG-armv7a` | Si el release instala pero **crashea al abrir** — muestra error en pantalla. |

> **Importante:** el ZIP de GitHub contiene el `.apk` dentro. Descomprímelo antes de copiarlo al TV.

## 2. Desinstala versiones anteriores

Si ya tenías GadirTV instalado (otra versión o firma distinta):

1. Ajustes → Aplicaciones → GadirTV → **Desinstalar**
2. Vuelve a instalar el APK nuevo

Sin desinstalar, Android suele mostrar solo "No se ha instalado" sin más detalle.

## 3. Activa "Orígenes desconocidos"

En el TV Box:

- **Ajustes → Seguridad → Fuentes desconocidas** (o "Instalar apps desconocidas")
- Actívalo para el gestor de archivos o navegador que uses para abrir el APK

## 4. Cómo instalar en el TV

**Opción A — USB**
1. Copia el `.apk` a una memoria USB
2. Conéctala al TV
3. Abre el explorador de archivos del TV → toca el APK → Instalar

**Opción B — Descarga directa en el TV**
1. Sube el APK a Google Drive / Dropbox o envíatelo por Telegram
2. Abre el enlace desde el navegador del TV
3. Descarga e instala

**Opción C — ADB (desde PC)**
```bash
adb connect IP_DE_TU_TV:5555
adb install -r GadirTV-AndroidTV-armv7a.apk
```
Si falla, el mensaje de ADB indica la causa exacta (`NO_MATCHING_ABIS`, `VERSION_DOWNGRADE`, etc.).

## 5. Errores frecuentes

| Mensaje | Causa | Solución |
|---|---|---|
| No compatible con tu TV | APK **arm64** en TV **32-bit** | Usa **`GadirTV-AndroidTV-armv7a`** |
| No se ha instalado | Versión anterior con otra firma | Desinstala GadirTV y reinstala |
| Análisis del paquete | APK corrupto o ZIP sin extraer | Vuelve a descargar y descomprime el ZIP |
| Espacio insuficiente | Poco almacenamiento interno | Libera espacio en el TV |

## 6. Comprobar arquitectura del TV (opcional)

Instala **AIDA64** desde Play Store en el TV → CPU → Instruction set:

- `armv7` / `armv8l` → usa **armv7a**
- `arm64` / `aarch64` en modo 64-bit → prueba **arm64**

En la práctica, si no tienes Nvidia Shield, casi siempre es **armv7a**.

## 7. Emulador Android Studio (PC)

Los APK de TV (`GadirTV-AndroidTV.apk`, universal, arm64…) son **ARM** y en el emulador x86_64 **se instalan pero no arrancan**.

| Artefacto | Cuándo usarlo |
|---|---|
| **`GadirTV-emulator-x64-release.apk`** | **Emulador Android Studio x86_64 — usa este** |
| `GadirTV-emulator-x64-debug.apk` | Mismo emulador, build debug (arranque más lento) |

> Si aparece **"System UI isn't responding"**, pulsa **Wait** (no Close app).
> El primer arranque puede tardar 15–30 s en emuladores lentos.

> **Emulador:** no uses `GadirTV-AndroidTV.apk` — **no arranca** (solo ARM).
> Usa **`GadirTV-emulator-x64-release.apk`** exclusivamente.

```bash
adb uninstall com.gadir.tv
adb install -r GadirTV-emulator-x64-release.apk
```

### Error `INSTALL_FAILED_NO_MATCHING_ABIS`

Significa que el APK **no coincide con la CPU** del dispositivo al que apunta `adb`.

**1. Comprueba a qué dispositivo instalas** (muy habitual con el móvil conectado por USB):

```cmd
adb devices
adb shell getprop ro.product.cpu.abi
```

| CPU que devuelve `getprop` | APK correcto |
|---|---|
| `x86_64` | `GadirTV-emulator-x64-release.apk` |
| `armeabi-v7a` | `GadirTV-AndroidTV-armv7a.apk` (o `GadirTV-AndroidTV.apk`) |
| `arm64-v8a` | `GadirTV-AndroidTV-arm64.apk` o universal |

Si tienes **móvil/TV y emulador** conectados a la vez, especifica el destino:

```cmd
adb -e install -r GadirTV-emulator-x64-release.apk
```
(`-e` = solo emulador; `-d` = solo dispositivo físico)

**2. Verifica que el APK es el de emulador** (debe pesar ~15 MB, no ~50 MB):

Abre el `.apk` con 7-Zip → debe existir la carpeta `lib/x86_64/libflutter.so`.
Si solo ves `lib/armeabi-v7a` o `lib/arm64-v8a`, es un APK de TV — no sirve en emulador x86_64.

**3. Emulador con imagen ARM** (p. ej. "ARM 64" en AVD Manager):

No uses el APK x64. Instala `GadirTV-AndroidTV-arm64.apk` desde la [release](https://github.com/erfae/gadirtv-android/releases).

**4. TV Box o móvil real por USB:**

Usa `GadirTV-AndroidTV.apk`, **no** el de emulador.

O compila en el proyecto (desde la carpeta `gadirtv_android`):

**Linux / macOS:**
```bash
cd gadirtv_android
./scripts/build-emulator-apk.sh
```

**Windows (CMD):**
```cmd
cd gadirtv_android
scripts\build-emulator-apk.bat
```

**Windows (PowerShell):**
```powershell
cd gadirtv_android
.\scripts\build-emulator-apk.ps1
```

**Manual (cualquier SO):**
```bash
cd gadirtv_android
flutter pub get
# Restaurar registrant mínimo (sin libVLC al arrancar):
cp android/app/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.minimal.java \
   android/app/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java
flutter build apk --release --target-platform=android-x64 -PgtvEmulatorBuild=true
```

> **Importante:** ejecuta los comandos dentro de `gadirtv_android`, no en la raíz del repo.
> Si ves `No pubspec.yaml file found`, estás en la carpeta equivocada.

> El debug puede tardar 1–2 minutos en la primera pantalla negra/splash; el **release** arranca mucho más rápido.
