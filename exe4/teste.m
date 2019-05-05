graphics_toolkit gnuplot;

function xs = fillcell(n, x)
    xs = cell(1, n);
    xs = cellfun(@(blah) x, xs, 'UniformOutput', false);
end

N = 50;
A = 0;
B = 1;

data = {};
leg = {};

%%%%%

data = {};

tipo_a = 1;
ua     = -1;
sigma_a = [];
alfa_a  = [];
beta_a  = [];
gamma_a = [];

tipo_b = 1;
ub = 1;
sigma_b = [];
alfa_b  = [];
beta_b  = [];
gamma_b = [];

[x, u] = pvc(A, B, N,
    tipo_a,ua,sigma_a,alfa_a,beta_a,gamma_a,
    tipo_b,ub,sigma_b,alfa_b,beta_b,gamma_b
);

data = [data, {x; u;}];
leg = [leg; num2str(1)];

%%%%%%

tipo_a = 2;
ua     = [];
sigma_a = 1;
alfa_a  = [];
beta_a  = [];
gamma_a = [];

tipo_b = 1;
ub = 1;
sigma_b = [];
alfa_b  = [];
beta_b  = [];
gamma_b = [];


[x, u] = pvc(A, B, N,
    tipo_a,ua,sigma_a,alfa_a,beta_a,gamma_a,
    tipo_b,ub,sigma_b,alfa_b,beta_b,gamma_b
);

data = [data, {x; u;}];
leg = [leg; num2str(2)];

%%%

tipo_a = 1;
ua     = -1;
sigma_a = [];
alfa_a  = [];
beta_a  = [];
gamma_a = [];

tipo_b = 3;
ub = [];
sigma_b = [];
alfa_b  = -1;
beta_b  = 2;
gamma_b = -1;


[x, u] = pvc(A, B, N,
    tipo_a,ua,sigma_a,alfa_a,beta_a,gamma_a,
    tipo_b,ub,sigma_b,alfa_b,beta_b,gamma_b
);

data = [data, {x; u;}];
leg = [leg; num2str(3)];

%%%%%

numData = size(data)(2);
linStyle = '--';
testPLot = [data; fillcell(numData, '--')];

f = @(x) x^2 + x - 1;
xs = linspace(A, B, N)';
ys = arrayfun(f, xs);
testPLot = [{xs; ys; '-'}, testPLot];
leg = ["sol"; leg];

%%%%%

plot(testPLot{:});
legend(leg{:});
title(["n = ", num2str(N)]);
grava_grafico(["teste-" num2str(N)], "png");


