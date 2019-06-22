

















args = argv();
if length(args) < 2
    printf("executável de resolução por GMRES precisa de 3 parâmetros\n");
    exit(1);
endif

% probname = args{1};
probname = "simples";
n = str2num(args{1});
m = str2num(args{2});

num = n * m
restart = 15;

outfd = "saida";
mkdir(outfd);

name = [ probname "_" num2str(n) "_" num2str(m) ]

infile = ["dados/" name "_sys" ];
load(infile);

tic;
[u, flag, relres, iter, resvec] = gmres(mA, vR, 15, 1e-9, num);
t = toc;

flag
relres
iter
t

outname = [outfd "/" name "_gmres"]

save("-binary", outname,
    "u", "flag", "relres", "iter", "resvec"
    % ,"t"
    , "name", "n", "m", "restart"
    , "b_a", "b_b", "b_c", "b_d"  % vem do arquivo de dados
);

txtfile = [outname ".txt"];
fh = fopen(txtfile, "w");
fprintf(fh, "t = %f\n", t);
fclose(fh);

fprintf("\n");
