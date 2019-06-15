#!/bin/bash
source "common.sh"

DIMS=(
    # "4 4"
    # "25 25"
    "50  50"
    "25  100"
    # "100 100"
    # "200 50"
    # "200 200"
    # "250 250"
    # "500 1000"
    # "1000 1000"
)

NAMES=(
    "simples"
    "conhecido"
    "ap1"
)


for DIM in "${DIMS[@]}"; do
    for NAME in "${NAMES[@]}"; do
        # $RUNNER "octave-cli ./bin/executa_gmres.m $NAME $DIM"
        $RUNNER "octave-cli ./bin/gmres_$NAME.m $DIM"
    done
done
