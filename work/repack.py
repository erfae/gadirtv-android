import zipfile
import shutil

SRC = 'NetTV_mod.apk'          # original APK (has correct compression types)
DEX = 'classes2.dex'            # our modified DEX
OUT = 'NetTV_mod_gadir_v2.apk'  # new output

src = zipfile.ZipFile(SRC, 'r')
out = zipfile.ZipFile(OUT, 'w', allowZip64=True)

with open(DEX, 'rb') as f:
    new_dex = f.read()

for info in src.infolist():
    if info.filename.startswith('META-INF/') and (info.filename.endswith('.RSA') or info.filename.endswith('.SF') or info.filename.endswith('MANIFEST.MF')):
        # skip old signatures - will resign
        continue
    # Preserve original ZipInfo (compression type, external attr, etc.)
    new_info = zipfile.ZipInfo(filename=info.filename, date_time=info.date_time)
    new_info.compress_type = info.compress_type
    new_info.external_attr = info.external_attr
    new_info.create_system = info.create_system
    if info.filename == 'classes2.dex':
        data = new_dex
    else:
        data = src.read(info.filename)
    out.writestr(new_info, data)

src.close()
out.close()
print('Repacked:', OUT)
