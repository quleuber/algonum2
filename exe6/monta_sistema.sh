#!/bin/bash
source "common.sh"

for DIM in "${DIMS[@]}"; do
    for NAME in "${NAMES[@]}"; do
        $RUNNER "octave-cli ./bin/sys_$NAME.m $DIM"
    done
done
