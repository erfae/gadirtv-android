# 📱 Documentación del Proyecto: NetTV → GADIR

**Cliente**: Proyecto personalizado APK  
**Estado**: ✅ Completado y verificado  
**Versión final**: v23  
**Fecha de cierre**: Enero 2026

---

## 1. Objetivo del Proyecto

Modificar el APK **NetTV Player v3.8** para:

1. Forzar que el **Portal 2** siempre se conecte al servidor `http://gadir.co:80`
2. Mantener los **Portales 1 y 3** con sus URLs dinámicas del servidor
3. Compatibilidad total con **Google TV, Android TV, móviles y tablets**
4. Personalización visual completa: renombrar Portal 2 a "GADIR", cambiar logos e icono de la app, y renombrar la app a "GADIR"

---

## 2. Entregable Final

| Campo | Valor |
|---|---|
| **APK** | `NetTV_mod_gadir.apk` |
| **URL de descarga** | https://adaptive-portal-hub.preview.emergentagent.com/NetTV_mod_gadir.apk |
| **MD5** | `8201bf036d3bcd6cb244e849dbbcfde2` |
| **Tamaño** | ~34 MB |
| **Firma SHA-256** | `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc` |
| **Certificado** | AOSP testkey (`CN=Android`) — pública y compartida con la v3.8 original |
| **Package** | `com.nettv.livestore` (sin cambios para preservar el ANDROID_ID) |

---

## 3. Modificaciones Aplicadas

### 3.1. Lógica (código smali → classes2.dex)

**Archivo modificado**: `com/nettv/livestore/models/AppInfoModel.smali`  
**Método**: `getResult()`

Cada vez que la app lee la lista de portales:
- Detecta el Portal 2 (índice 1) → lo renombra a **"GADIR"**
- Lee la URL asignada por el servidor `cameleon.vip` para ese portal
- Parsea la URL y **reemplaza el host** por `gadir.co:80` (usando `java.net.URL.getFile()` para conservar la ruta y query intacta)
- Las credenciales (`username=X&password=Y`) que asigna cameleon.vip al usuario se conservan tal cual
- Manejo de excepciones (try/catch) por si la URL viene mal formada

**Ejemplo del efecto**:
- Antes: `http://cameleon-server.xxx/get.php?username=USER123&password=PASS456&type=m3u_plus&output=ts`
- Después: `http://gadir.co:80/get.php?username=USER123&password=PASS456&type=m3u_plus&output=ts`

**Resultado**: al pulsar Connect en Portal 2, la app autentica contra `http://gadir.co:80/player_api.php` con las credenciales dinámicas del usuario.

### 3.2. Recursos binarios (`resources.arsc`)

Edición byte-a-byte del `resources.arsc` **sin recompilación** (para evitar los errores de aapt2 con drawables Material Design que tienen prefijo `$`):

- String `app_name`: `"NetTV Player"` (12 bytes UTF-8) → `"GADIR"` (5 bytes + 7 bytes NULL de relleno)
- Se mantiene la longitud total del slot y los offsets del StringPool
- Se actualiza el prefijo de longitud UTF-8/UTF-16 de `0x0c 0x0c` a `0x05 0x05`

### 3.3. Recursos gráficos

Todos los logos e iconos han sido reemplazados con el logo GADIR:

| Recurso | Tamaño | Uso |
|---|---|---|
| `res/mipmap-mdpi/ic_launcher.png` | 48×48 | Icono launcher (baja densidad) |
| `res/mipmap-hdpi/ic_launcher.png` | 72×72 | Icono launcher |
| `res/mipmap-xhdpi/ic_launcher.png` | 96×96 | Icono launcher |
| `res/mipmap-xxhdpi/ic_launcher.png` | 144×144 | Icono launcher |
| `res/mipmap-xxxhdpi/ic_launcher.png` | 192×192 | Icono launcher (alta densidad) |
| `ic_launcher_round.png` | (5 densidades) | Icono redondo (launchers redondeados) |
| `ic_launcher_foreground.png` | 108/162/216/324/432 | Icono adaptativo (Android 8+, safe zone al 66%) |
| `res/drawable/home_logo.png` | 320×180 | Logo dentro de la app |
| `res/drawable/logo.jpg` | 512×512 | Logo grande |

### 3.4. Firma

- **Certificado usado**: AOSP `testkey` pública (`build/target/product/security/testkey.pk8` del AOSP)
- **SHA-256 del cert**: `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`
- **Esquemas aplicados**: V1 (JAR) + V2 (APK Signature Scheme v2) + V3

**Motivo**: Este certificado es **idéntico** al que firmaba el APK original v3.8. Firmar con esta clave garantiza que el `ANDROID_ID` (usado por `Settings.Secure.getString(ANDROID_ID)`) que genera Android sea el mismo, por lo que el backend `cameleon.vip` reconoce al dispositivo y devuelve los 3 portales correctamente.

---

## 4. Descubrimientos Clave (Lecciones del Proceso)

Durante las 23 iteraciones se identificaron varios problemas no evidentes:

### 4.1. El problema del ANDROID_ID
Desde Android 8.0, `Settings.Secure.ANDROID_ID` **cambia cuando cambia la firma del APK**. Como el backend `cameleon.vip` usa ese ID (codificado en Base64) como identificador del dispositivo, cualquier APK re-firmado con clave distinta aparece como "dispositivo nuevo" y no recibe los portales del usuario.

**Solución**: Firmar con la misma clave pública AOSP `testkey` que el APK v3.8 original.

### 4.2. El backend cameleon.vip
- Rechaza silenciosamente ediciones a URLs de portales del sistema (no persiste el cambio)
- Por eso hay que **forzar la URL en cliente**, no intentar guardarla en el backend
- URL del backend: `https://cameleon.vip/ibonet/playlists.php` (identificado en `Constants.smali`)

### 4.3. Recompilación de recursos
- `apktool 2.10` con `aapt2` falla al compilar recursos por drawables Material Design con prefijos `$` (ej. `$avd_hide_password__1`)
- **Solución**: modificar solo `classes2.dex`, `resources.arsc` (byte-edit) y archivos PNG/JPG directamente, **sin recompilar el APK entero**

### 4.4. Formato de URL del servidor gadir.co
- El servidor acepta M3U por `/get.php` con formato: `?username=X&password=Y&type=m3u_plus&output=mpegts`
- También acepta Xtream API por `/player_api.php` — que es lo que usa la app tras extraer usuario/contraseña

---

## 5. Arquitectura de la App (relevante para el mantenimiento)

```
┌─────────────────────────────────────────────────────────┐
│  App NetTV (com.nettv.livestore)                        │
│  Package: com.nettv.livestore                           │
│  Firma: AOSP testkey CN=Android                         │
└────────────────────┬────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────┐
│  cameleon.vip (backend de perfiles de portal)           │
│  URL: https://cameleon.vip/ibonet/playlists.php         │
│  ID de dispositivo: Base64(ANDROID_ID)                  │
│  Retorna: AppInfoModel con 3 UrlModels (portales)       │
└────────────────────┬────────────────────────────────────┘
                     │
     ┌───────────────┼───────────────┐
     │               │               │
     ▼               ▼               ▼
  Portal 1        Portal 2        Portal 3
  URL dinámica    ▲ MOD ▲         URL dinámica
                  │
                  │ getResult() intercepta:
                  │  - Renombra a "GADIR"
                  │  - Reemplaza host por gadir.co:80
                  │  - Preserva credenciales del usuario
                  ▼
              http://gadir.co:80/get.php?
                username=<USER>&password=<PASS>
                &type=m3u_plus&output=ts
```

---

## 6. Instrucciones de Instalación

### Primera instalación
1. Desinstalar cualquier versión previa de NetTV Player
2. Descargar el APK: `https://adaptive-portal-hub.preview.emergentagent.com/NetTV_mod_gadir.apk`
3. En el dispositivo: activar **"Fuentes desconocidas"** (Ajustes → Seguridad)
4. Abrir el APK descargado → Instalar
5. Si Play Protect avisa: pulsar **"Instalar de todos modos"**
6. Abrir la app — verá los 3 portales, con el segundo llamado **"GADIR"**

### Actualización
Como el APK está firmado con la misma clave AOSP que la v3.8, se puede **instalar directamente encima** (actualización) sin desinstalar la versión anterior.

### Compatibilidad
- Android 5.0+ (API 21)
- Google TV / Android TV
- Móvil / Tablet Android
- (arquitecturas: armeabi-v7a, arm64-v8a, x86, x86_64)

---

## 7. Uso Diario

- **Portales 1 y 3**: se conectan como en la versión original (URLs dinámicas)
- **Portal GADIR**: al pulsar Connect, se conecta a `http://gadir.co:80` con las credenciales asignadas por el servidor cameleon.vip para tu cuenta
- **Cambio de usuario**: al usar la app otra persona, cameleon.vip asigna otras credenciales y el mod las conserva automáticamente al forzar solo el host

---

## 8. Herramientas Utilizadas

| Herramienta | Versión | Uso |
|---|---|---|
| Apktool | 2.10.0 | Descompilar el APK original a smali |
| baksmali | 2.5.2 | Desensamblar classes2.dex |
| smali | 2.5.2 | Reensamblar smali → dex |
| Python 3 + Pillow | - | Redimensionar/generar los iconos, editar `resources.arsc` |
| zipalign | Android SDK | Alinear el APK a 4 bytes |
| apksigner | Android SDK | Firmar V1+V2+V3 con la AOSP testkey |
| AOSP testkey | Público | Firma que preserva el ANDROID_ID |

---

## 9. Historial de Iteraciones (resumen)

| Versión | Cambio | Resultado |
|---|---|---|
| v1-v3 | Primeros intentos con URL fija | Falla: firma incorrecta, ANDROID_ID cambia |
| v4-v7 | Refinar formato URL, User-Agent VLC, forzar M3U | Portal 2 M3U pero fallos crecientes |
| v8-v9 | Credenciales hardcodeadas | Funciona para 1 usuario, no genérico |
| v10-v14 | Intento genérico posición-based | Falla firma → portales 1 y 3 rotos |
| v15 | Solo rename GADIR con base v3.8 original | Portales funcionan, pero sin URL fija |
| v16-v20 | Añadir URL forcing y M3U routing | Falla porque URL modificada no llega a goToLogin |
| **v21** | Mod definitiva en `getResult()` — swap solo del host preservando creds | **FUNCIONA con 2+ usuarios** |
| v22 | + Logos GADIR (icono, launcher, home_logo, logo.jpg) | ✅ |
| **v23** | + Nombre app "GADIR" (edit binario `resources.arsc`) | ✅ **VERSIÓN FINAL** |

---

## 10. Verificación Final del Cliente

> **Cliente:** "he probado con 2 usuarios y entran en gadir.co"

Verificado con dos usuarios distintos. Cada uno mantiene sus credenciales de acceso y todos entran al servidor `gadir.co:80`.

---

## 11. Contacto y Soporte Post-Cierre

Este proyecto ha sido cerrado a petición del cliente el 07/01/2026.

**Notas importantes para futuras modificaciones**:
- Si el APK original de NetTV se actualiza a v3.9 o superior, habrá que repetir el proceso desde cero
- Si el servidor cameleon.vip cambia el endpoint o el esquema de identificación, la parte del backend podría requerir ajuste
- Si el servidor `gadir.co:80` cambia de puerto o dominio, actualizar la constante `"http://gadir.co:80"` en `AppInfoModel.smali` línea del `const-string v3, "http://gadir.co:80"`
- La firma AOSP testkey es pública y estable, no debería cambiar

---

*Documento generado automáticamente al cerrar el proyecto.*
