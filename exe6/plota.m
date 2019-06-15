args = argv();
if length(args) < 1
    printf("executável de montagem do sistema precisa de 1 parâmetros\n");
    exit(1);
endif

name = args{1};

fullname = [ name "_gmres" ];

load(["saida/" fullname ]);

tx = linspace(b_a, b_b, n);
ty = linspace(b_c, b_d, m);

% [xx, yy] = meshgrid(tx, ty);

tz = reshape(u, n, m)';

mesh (tx, ty, tz);
title(strrep(fullname, "_", " "));
xlabel("x");
ylabel("y");

plotfd = "plot";
mkdir(plotfd);
grava_grafico([ plotfd "/" fullname ], "png");
