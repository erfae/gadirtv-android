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

```bash
adb uninstall com.gadir.tv
adb install -r GadirTV-emulator-x64-release.apk
adb shell am start -n com.gadir.tv/.MainActivity
```

> El debug puede tardar 1–2 minutos en la primera pantalla negra/splash; el **release** arranca mucho más rápido.
