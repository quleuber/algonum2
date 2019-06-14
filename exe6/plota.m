args = argv();
if length(args) < 1
    printf("executável de montagem do sistema precisa de 1 parâmetros\n");
    exit(1);
endif

prob = args{1};

load(["saida/" prob "_50_50_gmres"]);

tx = linspace(b_a, b_b, n);
ty = linspace(b_c, b_d, m);

[xx, yy] = meshgrid (tx, ty);

tz = sin (xx) ./ xx;

tz = reshape(u, n, m);

mesh (tx, ty, tz);

plotfd = "plot";
mkdir(plotfd);
grava_grafico([plotfd "/" prob "_50_50_gmres"], "png");
