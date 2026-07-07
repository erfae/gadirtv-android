// Patches the Electron .exe with proper Windows PE metadata + our icon.
const fs = require('fs');
const path = require('path');
const ResEdit = require('resedit');

const target = path.resolve(__dirname, '..', 'dist_manual', 'GadirTV', 'GadirTV.exe');
const iconPath = path.resolve(__dirname, '..', 'icon.ico');

if (!fs.existsSync(target)) {
  console.error('[metadata] target not found:', target);
  process.exit(1);
}

const buf = fs.readFileSync(target);
const exe = ResEdit.NtExecutable.from(buf);
const res = ResEdit.NtExecutableResource.from(exe);

// Version info
const vi = ResEdit.Resource.VersionInfo.createEmpty();
vi.setFileVersion(1, 0, 0, 0);
vi.setProductVersion(1, 0, 0, 0);
vi.setStringValues(
  { lang: 1033, codepage: 1200 },
  {
    ProductName: 'GadirTV',
    FileDescription: 'GadirTV - Reproductor IPTV',
    CompanyName: 'GadirTV',
    LegalCopyright: 'Copyright (c) 2026 GadirTV',
    OriginalFilename: 'GadirTV.exe',
    InternalName: 'GadirTV',
    FileVersion: '1.0.0.0',
    ProductVersion: '1.0.0.0',
  }
);
vi.outputToResourceEntries(res.entries);

// Icon
if (fs.existsSync(iconPath)) {
  const icoBuf = fs.readFileSync(iconPath);
  const ab = icoBuf.buffer.slice(icoBuf.byteOffset, icoBuf.byteOffset + icoBuf.byteLength);
  const iconFile = ResEdit.Data.IconFile.from(ab);
  ResEdit.Resource.IconGroupEntry.replaceIconsForResource(
    res.entries,
    1,
    1033,
    iconFile.icons.map(i => i.data)
  );
}

res.outputResource(exe);
fs.writeFileSync(target, Buffer.from(exe.generate()));
console.log('[metadata] patched OK ->', target);
