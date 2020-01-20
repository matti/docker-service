#!/usr/bin/env bash
set -euo pipefail

_err() {
  >&2 echo "err: $*"
  exit 1
}

_socat() {
  echo "$1 --> $2"
  exec socat tcp-listen:$1,fork,reuseaddr tcp-connect:$2
}

[ "${PORTS:-}" = "" ] && _err "PORTS unset"

for pair in ${PORTS:-}; do
  from=${pair%%:*}
  to=${pair#*:}

  _socat $from $to &
done

wait $(jobs -p)
