#!/usr/bin/env bash
set -euo pipefail

_err() {
  >&2 echo "err: $*"
  exit 1
}

[ "${PORT:-}" = "" ] && _err "PORT unset"
[ "${TARGET:-}" = "" ] && _err "TARGET unset"

echo "$PORT --> $TARGET"
exec socat tcp-listen:$PORT,fork,reuseaddr tcp-connect:$TARGET
