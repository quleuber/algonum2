
export DIMS=(
    "51 21"
    "101 81"
)

export NAMES=(
    "ap2a"
)

PUEUE_ENABLE=1

RUNNER="eval"
if [ ! -z "$PUEUE_ENABLE" ] && pueue status 2>&1 >/dev/null; then
    export RUNNER="pueue add";
fi
