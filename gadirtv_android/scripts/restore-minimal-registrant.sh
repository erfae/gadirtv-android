#!/usr/bin/env bash
# Restore the minimal GeneratedPluginRegistrant (no libVLC at cold start).
# flutter pub get overwrites it with the full plugin list.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/scripts/templates/GeneratedPluginRegistrant.minimal.java"
DST="$ROOT/android/app/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java"
if [[ ! -f "$SRC" ]]; then
  echo "ERROR: missing $SRC" >&2
  exit 1
fi
cp -f "$SRC" "$DST"
if grep -q 'fluttervlcplayer' "$DST"; then
  echo "ERROR: GeneratedPluginRegistrant still registers libVLC" >&2
  exit 1
fi
echo "Restored minimal GeneratedPluginRegistrant"
