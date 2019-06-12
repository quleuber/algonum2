#!/bin/bash

DIMS=(
    "4 4"
    "50  50"
    "25  100"
    "100 100"
    "200 50"
    # "500 1000"
    # "1000 1000"
)

NAMES=(
    # simples
    conhecido
)

RUNNER="eval"
if pueue status 2>&1 >/dev/null; then RUNNER="pueue add"; fi

for DIM in "${DIMS[@]}"; do
    for NAME in "${NAMES[@]}"; do
        $RUNNER "octave-cli ./bin/sys_$NAME.m $DIM"
    done
done
