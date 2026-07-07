// Copies the built React frontend into the Electron app folder and
// rewrites paths so it works from file:// (CRA hardcodes absolute /static paths).
const fs = require('fs');
const path = require('path');

const SRC = path.resolve(__dirname, '..', '..', 'frontend', 'build');
const DEST = path.resolve(__dirname, '..', 'app');

function copyDir(src, dst) {
  fs.mkdirSync(dst, { recursive: true });
  for (const entry of fs.readdirSync(src, { withFileTypes: true })) {
    const s = path.join(src, entry.name);
    const d = path.join(dst, entry.name);
    if (entry.isDirectory()) copyDir(s, d);
    else fs.copyFileSync(s, d);
  }
}

if (!fs.existsSync(SRC)) {
  console.error('[prepare] frontend build not found at', SRC);
  console.error('[prepare] run "yarn --cwd ../frontend build" first');
  process.exit(1);
}

if (fs.existsSync(DEST)) fs.rmSync(DEST, { recursive: true, force: true });
copyDir(SRC, DEST);

// CRA generates absolute paths like "/static/js/main.xxx.js" — rewrite to
// relative so they load from file:// too.
const idx = path.join(DEST, 'index.html');
let html = fs.readFileSync(idx, 'utf8');
html = html.replace(/(href|src)="\//g, '$1="');
fs.writeFileSync(idx, html);

// Same for the JS runtime that references /static/ inside the bundle chunks.
function walkAndFix(dir) {
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const p = path.join(dir, entry.name);
    if (entry.isDirectory()) walkAndFix(p);
    else if (/\.(js|css)$/.test(entry.name)) {
      let c = fs.readFileSync(p, 'utf8');
      const patched = c.replace(/"\/static\//g, '"static/');
      if (patched !== c) fs.writeFileSync(p, patched);
    }
  }
}
walkAndFix(DEST);

console.log('[prepare] app copied to', DEST);
