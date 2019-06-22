#!/usr/bin/octave
args = argv();
if length(args) < 2
    printf("Precisa de 2 parâmetros\n");
    exit(1);
endif
name = args{1};
metodo = args{2};

fullname = [ name "_" metodo ];
filename = [ "saida/" fullname ];
load(filename);

kappa = 1;
hx = (b_b - b_a) / (n - 1);
hy = (b_d - b_c) / (m - 1);

n
m

mu = reshape(u, n, m)';

dxs = zeros(m-2, n-2);
dys = zeros(m-2, n-2);

size(dxs)
size(dys)

tx = linspace(b_a+hx, b_b-hx, n-2);
ty = linspace(b_c+hy, b_d-hy, m-2);

for ix = 2 : n-1
    for iy = 2 : m-1
        dys(iy-1,ix-1) = - kappa * ( mu(iy+1, ix  ) - mu(iy-1, ix  ) ) / (2*hx); 
        dxs(iy-1,ix-1) = - kappa * ( mu(iy  , ix+1) - mu(iy  , ix-1) ) / (2*hy);
    endfor
endfor

size(dxs)
size(dys)

quiver(tx, ty, dxs, dys);

plotfd = "plot"; mkdir(plotfd);
grava_grafico([ plotfd "/" fullname "_vecf" ], "png");
