#!/usr/bin/env bash
# ordinookis — serve the character + video gallery
set -euo pipefail
cd "$(dirname "$0")"
PORT="${PORT:-8766}"
echo "Ordinookis gallery → http://127.0.0.1:${PORT}/"
echo "Ctrl+C to stop."
exec python3 -m http.server "$PORT" --bind 127.0.0.1
