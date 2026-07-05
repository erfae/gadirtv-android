# NetTV APK Mod – Portal 2 fijo a http://gadir.co:80

## Problema original
"quiero modificar el portal2 para que fuerce a conectarse a la url http://gadir.co:80... los otros dos portales usan url dinamicas..... funciona tanto en google tv, android tv, movil y tablet"

## Solución aplicada
- APK original: `NetTV_mod-aligned-signed (1).apk`
- Se descompiló con apktool 2.10.0
- Modificación smali en `com/nettv/livestore/models/AppInfoModel.smali`
  → método `getResult()` sobrescribe la URL del elemento en índice 1 (portal 2) con `http://gadir.co:80` cada vez que se lee la lista
- Portales 1 (índice 0) y 3 (índice 2) siguen usando la URL dinámica que envía el servidor
- Se ensambló solo classes2.dex con smali 2.5.2 (evitando recompilar recursos con símbolos `$` conflictivos)
- classes2.dex reemplazado dentro del APK original, re-alineado (zipalign) y re-firmado con V1+V2+V3 (keystore self-signed)

## Compatibilidad
Compatible con Google TV, Android TV, móvil y tablet (mismo APK, sin cambios en manifest ni permisos).

## Entregable
- Ruta interna: `/app/output/NetTV_mod_gadir.apk`
- URL de descarga: `https://adaptive-portal-hub.preview.emergentagent.com/NetTV_mod_gadir.apk`
- Firma: self-signed (CN=NetTV Mod), V1+V2+V3

## Notas
- La URL forzada se aplica cada vez que la app lee la lista de portales, así aunque el usuario intente editar la URL del portal 2 desde la UI, al recargar volverá a ser gadir.co:80.
- Si el servidor devuelve <2 portales, no se aplica ningún cambio (comportamiento normal).
