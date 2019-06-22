#!/bin/bash

RUNNER=""
RUNNER="pueue add"

# N=101; M=41;
N=101; M=81;

# N=51; M=21;
$RUNNER octave-cli ./bin/sys_ap2a.m $N $M
$RUNNER octave-cli ./bin/gmres_ap2a.m $N $M && \
$RUNNER octave-cli ./plota.m ap2a_${N}_${M} gmres

# N=51; M=21;
$RUNNER octave-cli ./bin/sor2_ap2a.m $N $M && \
$RUNNER octave-cli ./plota.m ap2a_${N}_${M} sor2

# N=51; M=21;
$RUNNER octave-cli ./bin/sor_ap2a.m $N $M && \
$RUNNER octave-cli ./plota.m ap2a_${N}_${M} sor
