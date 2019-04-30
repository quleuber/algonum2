
graphics_toolkit gnuplot;
% graphics_toolkit qt;

global MAT_NAMES = {
    "fs1831.mtx";
    "hor131.mtx";
    "orsirr1.mtx";
    "nrail5177.mtx"; 
};

global TOL = 0.00001;
global MAXITER = 10000;
global W = 0.5;

global OUTDIR = 'saida'
mkdir(OUTDIR)

script()

