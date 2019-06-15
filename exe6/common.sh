
PUEUE_ENABLE=1

RUNNER="eval"
if [ ! -z "$PUEUE_ENABLE" ] && pueue status 2>&1 >/dev/null; then RUNNER="pueue add"; fi
