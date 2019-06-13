
args = argv();
if length(args) < 3
    printf("executável de resolução por GMRES precisa de 3 parâmetros\n");
    exit(1);
endif

probname = args{1};
n = str2num(args{2});
m = str2num(args{3});

outfd = "saida";
mkdir(outfd);

name = [ probname "_" num2str(n) "_" num2str(m) ]

infile = ["dados/" name "_sys" ];
load(infile);

RESTART = [];
MAXIT = [];
TOL = [];

tic;
[x, flag, relres, iter, resvec] = gmres(mA, vR);
t = toc;

flag
relres
iter
t

outname = [outfd "/" name "_gmres"]

save("-binary", outname,
    "x", "flag", "relres", "iter", "resvec"
    % ,"t"
);

txtfile = [outname ".txt"];
fh = fopen(txtfile, "w");
fprintf(fh, "t = %f\n", t);
fclose(fh);

fprintf("\n\n");
