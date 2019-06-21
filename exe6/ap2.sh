#!/bin/bash

N=51; M=21;
octave-cli ./bin/sys_ap2a.m $N $M
octave-cli ./bin/gmres_ap2a.m $N $M && \
octave-cli ./plota.m ap2a_${N}_${M} gmres
echo

N=101; M=81;
octave-cli ./bin/sys_ap2a.m $N $M
octave-cli ./bin/gmres_ap2a.m $N $M && \
octave-cli ./plota.m ap2a_${N}_${M} gmres
echo

N=51; M=21;
octave-cli ./bin/sor2_ap2a.m $N $M && \
octave-cli ./plota.m ap2a_${N}_${M} sor2
echo

N=51; M=21;
octave-cli ./bin/sor_ap2a.m $N $M && \
octave-cli ./plota.m ap2a_${N}_${M} sor
echo
