
args = argv();
if length(args) < 3
    printf("executável de resolução por GMRES precisa de 3 parâmetros");
    exit(1);
endif

name = str2num(args{1});
n = str2num(args{2});
m = str2num(args{3});

infile = ["dados/" name "_sys_" num2str(n) "_" num2str(m)]
load(infile)

RESTART = []
MAXIT = []
TOL = []

tic
[x, flag, relres, iter, resvec] = gmres(mA, vB)
t = toc;

flag
relres
iter
t

outname = ["saida/" name "_sol_gmres"]
save(outname
    "x", "flag", "relres", "iter", "resvec",
    "t"
)
