#!/bin/bash

source "common.sh"

for DIM in "${DIMS[@]}"; do
    for NAME in "${NAMES[@]}"; do
        $RUNNER "octave-cli ./executa_gmres.m $NAME $DIM"
    done
done
