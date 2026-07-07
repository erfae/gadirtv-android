import zipfile, os
SRC = 'box.apk'
DEX3 = 'classes3.dex'
OUT = 'box_gadir.apk'
src = zipfile.ZipFile(SRC, 'r')
out = zipfile.ZipFile(OUT, 'w', allowZip64=True)
with open(DEX3, 'rb') as f: new_dex3 = f.read()
for info in src.infolist():
    if info.filename.startswith('META-INF/') and (info.filename.endswith('.RSA') or info.filename.endswith('.SF') or info.filename.endswith('MANIFEST.MF')):
        continue
    new_info = zipfile.ZipInfo(filename=info.filename, date_time=info.date_time)
    new_info.compress_type = info.compress_type
    new_info.external_attr = info.external_attr
    new_info.create_system = info.create_system
    if info.filename == 'classes3.dex':
        data = new_dex3
    else:
        data = src.read(info.filename)
    out.writestr(new_info, data)
src.close(); out.close()
print('Repacked:', OUT)
