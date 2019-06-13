#!/bin/bash

source "common.sh"

for DIM in "${DIMS[@]}"; do
    for NAME in "${NAMES[@]}"; do
        # $RUNNER "octave-cli ./bin/executa_gmres.m $NAME $DIM"
        $RUNNER "octave-cli ./bin/gmres_$NAME.m $DIM"
    done
done
