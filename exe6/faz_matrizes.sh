#!/bin/bash

NAMES=(simples conhecido)
N=4
M=4

for NAME in ${NAMES[*]}; do
    echo octave-cli ./bin/sys_$NAME.m $N $M
done
