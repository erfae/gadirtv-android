# NetTV → GADIR APK Mod — PROYECTO COMPLETADO

## Original Problem Statement
"quiero modificar el portal2 para que fuerce a conectarse a la url http://gadir.co:80... los otros dos portales usan url dinamicas..... funciona tanto en google tv, android tv, movil y tablet"

## Solución Final (APK v23)
- Base: NetTV_ibo_v3.8.apk (original firmado con AOSP testkey `CN=Android`)
- Firmado con la misma AOSP testkey pública para mantener el mismo ANDROID_ID que en el original → cameleon.vip reconoce el dispositivo → los 3 portales cargan sus URLs dinámicas correctamente

## Modificaciones aplicadas
1. **`AppInfoModel.getResult()`** (smali):
   - Renombra Portal 2 (índice 1) a "GADIR"
   - Al leer la URL de Portal 2, reemplaza el HOST original (cualquiera que sea) por `gadir.co:80` manteniendo path + query intactos (`/get.php?username=X&password=Y&...`)
   - Try/catch para robustez ante URLs malformadas
2. **`resources.arsc`** (edición binaria directa):
   - Cambio de `app_name` de "NetTV Player" a "GADIR" mediante modificación de bytes UTF-8 preservando offsets
3. **Recursos gráficos**:
   - Logo GADIR sustituye ic_launcher.png (5 densidades)
   - ic_launcher_round.png, ic_launcher_foreground.png (todas las densidades)
   - home_logo.png (320x180) y logo.jpg (512x512)

## Descubrimientos clave del proceso
- **ANDROID_ID depende de la firma del APK en Android 8+**: al re-firmar con clave distinta, ANDROID_ID cambia → cameleon.vip trata al usuario como nuevo → portales no cargan
- **Solución**: firmar con la clave pública AOSP `testkey` (misma que la v3.8 original)
- **Backend cameleon.vip**: rechaza edición de URLs de portales del sistema, por eso hay que forzar la URL en cliente
- **Recompilar recursos**: apktool 2.10 falla por drawables con `$` (Material Design AVDs). Solución: modificar solo classes2.dex + resources.arsc + PNGs, sin recompilar completo

## Iteraciones (v1 → v23)
23 iteraciones fueron necesarias por: descubrimiento del signature/ANDROID_ID, comportamiento del backend cameleon.vip, formato exacto de URL para el servidor gadir.co, preservación de credenciales, y encajar todo respetando el flujo interno de la app.

## Entregable Final
- Ruta: `/app/output/NetTV_mod_gadir.apk`
- URL: `https://adaptive-portal-hub.preview.emergentagent.com/NetTV_mod_gadir.apk`
- MD5: `8201bf036d3bcd6cb244e849dbbcfde2`
- Firma SHA-256: `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc` (AOSP testkey, misma que v3.8)
- Tamaño: ~34 MB
- Compatible: Google TV, Android TV, móvil, tablet

## Estado: ✅ CERRADO Y FUNCIONAL
- Portal 2 (GADIR) fuerza conexión a `http://gadir.co:80` con credenciales dinámicas del usuario
- Portales 1 y 3 mantienen URLs dinámicas del servidor
- Verificado con 2 usuarios distintos por el cliente
- Personalización visual completa (logo + nombre "GADIR")
