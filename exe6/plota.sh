#!/bin/bash
source "common.sh"

set -e

for DIM in "${DIMS[@]}"; do
    for NAME in "${NAMES[@]}"; do
        DIM_=$(printf "$DIM" | tr " " "_")
        $RUNNER "./plota.m ${NAME}_${DIM_} gmres"
    done
done
