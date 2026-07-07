import zipfile
import os

SRC = 'NetTV_original.apk'
DEX = 'classes2.dex'
APKTOOL_DIR = 'nettv_orig'
OUT = 'NetTV_orig_gadir.apk'

# Files to replace from apktool folder
IMAGE_FILES = [
    'res/mipmap-mdpi/ic_launcher.png',
    'res/mipmap-mdpi/ic_launcher_round.png',
    'res/mipmap-mdpi/ic_launcher_foreground.png',
    'res/mipmap-hdpi/ic_launcher.png',
    'res/mipmap-hdpi/ic_launcher_round.png',
    'res/mipmap-hdpi/ic_launcher_foreground.png',
    'res/mipmap-xhdpi/ic_launcher.png',
    'res/mipmap-xhdpi/ic_launcher_round.png',
    'res/mipmap-xhdpi/ic_launcher_foreground.png',
    'res/mipmap-xxhdpi/ic_launcher.png',
    'res/mipmap-xxhdpi/ic_launcher_round.png',
    'res/mipmap-xxhdpi/ic_launcher_foreground.png',
    'res/mipmap-xxxhdpi/ic_launcher.png',
    'res/mipmap-xxxhdpi/ic_launcher_round.png',
    'res/mipmap-xxxhdpi/ic_launcher_foreground.png',
    'res/drawable/home_logo.png',
    'res/drawable/logo.jpg',
]

src = zipfile.ZipFile(SRC, 'r')
out = zipfile.ZipFile(OUT, 'w', allowZip64=True)

with open(DEX, 'rb') as f:
    new_dex = f.read()

# Load replacement image data
replacements = {}
for f in IMAGE_FILES:
    path = os.path.join(APKTOOL_DIR, f)
    if os.path.exists(path):
        with open(path, 'rb') as fp:
            replacements[f] = fp.read()

for info in src.infolist():
    if info.filename.startswith('META-INF/') and (info.filename.endswith('.RSA') or info.filename.endswith('.SF') or info.filename.endswith('MANIFEST.MF')):
        continue
    new_info = zipfile.ZipInfo(filename=info.filename, date_time=info.date_time)
    new_info.compress_type = info.compress_type
    new_info.external_attr = info.external_attr
    new_info.create_system = info.create_system
    if info.filename == 'classes2.dex':
        data = new_dex
    elif info.filename in replacements:
        data = replacements[info.filename]
    else:
        data = src.read(info.filename)
    out.writestr(new_info, data)

src.close()
out.close()
print('Repacked:', OUT, 'with', len(replacements), 'image replacements')
