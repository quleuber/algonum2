
export DIMS=(
    # "4 4"
    # "25 25"
    "50 50"
    "25 100"
    "100 100"
    "200 50"
    "200 200"
    "250 250"
    "500 1000"
    "1000 1000"
)

export NAMES=(
    # "simples"
    "conhecido"
    "ap1"
    # "ap1b"
    # "ap2a"
)

PUEUE_ENABLE=1

export RUNNER="eval"
if [ ! -z "$PUEUE_ENABLE" ] && pueue status 2>&1 >/dev/null; then
    export RUNNER="pueue add";
fi
