
DIMS=(
    "4 4"
    "50  50"
    "25  100"
    "100 100"
    "200 50"
    # "250 250"
    # "500 1000"
    # "1000 1000"
)

NAMES=(
    "simples"
    "conhecido"
)

PUEUE_ENABLE=1

RUNNER="eval"
if [ ! -z "$PUEUE_ENABLE" ] && pueue status 2>&1 >/dev/null; then RUNNER="pueue add"; fi
