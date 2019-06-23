#!/bin/bash
set -e

function doprint {
    if [ ! -f "saida/$1" ]; then
        echo Não encontrado: $1 
        echo
        return;
    fi
    echo "==>" $1 "<<="
    cat "saida/$1.txt"
    ./print_data.m "saida/$1" "iter" "restart" # "relres"
    echo
    echo
}

DIMS=(
    "50_50"
    "25_100"
    "100_100"
    "200_50"
    "200_200"
    "250_250"
    # "500_1000"
    # "1000_1000"
)

NAMES=(
    # "simples"
    "conhecido"
    "ap1"
)

for DIM in "${DIMS[@]}"; do
    for NAME in "${NAMES[@]}"; do
        doprint ${NAME}_${DIM}_gmres
        # doprint ${NAME}_${DIM}_sor
    done
done

doprint ap2a_51_21_gmres
doprint ap2a_51_21_sor

doprint ap2a_101_81_gmres
doprint ap2a_101_81_sor
