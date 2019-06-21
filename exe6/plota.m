graphics_toolkit gnuplot;

args = argv();
if length(args) < 2
    printf("executável de plot precisa de 2 parâmetros\n");
    exit(1);
endif

name = args{1};
metodo = args{2};

fullname = [ name "_" metodo ];

load(["saida/" fullname ]);

tx = linspace(b_a, b_b, n);
ty = linspace(b_c, b_d, m);

% [xx, yy] = meshgrid(tx, ty);

tz = reshape(u, n, m)';

mesh (tx, ty, tz);
axis ([b_a, b_b b_c, b_d]);

% pause;

title(strrep(fullname, "_", " "));
xlabel("x");
ylabel("y");

plotfd = "plot";
mkdir(plotfd);
grava_grafico([ plotfd "/" fullname ], "png");
printf("\n");
