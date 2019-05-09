graphics_toolkit gnuplot;
mkdir("saida/");

function xs = fillcell(n, x)
    xs = cell(1, n);
    xs = cellfun(@(blah) x, xs, 'UniformOutput', false);
end

function [x, u] = solve(a, b, n, p)
    [x, u] = pvc2(a, b, n, p.funcs,
        p.tipo_a,p.ua,p.sigma_a,p.alfa_a,p.beta_a,p.gamma_a,
        p.tipo_b,p.ub,p.sigma_b,p.alfa_b,p.beta_b,p.gamma_b
    );
end

N = 10;
A = 0;
B = 1;

NS = [10 50 100];

FUNCS.p = @(x)  -1/2;
FUNCS.q = @(x)  1;
FUNCS.r = @(x)  x^2 +1/2;

%%%%% PROBLEMAS %%%%%

problemas = {};


p1.nome = "ex1";
p1.ns = NS;

p1.funcs = FUNCS;

p1.a = A;
p1.b = B;

p1.tipo_a = 1;
p1.ua     = -1;
p1.sigma_a = [];
p1.alfa_a  = [];
p1.beta_a  = [];
p1.gamma_a = [];

p1.tipo_b = 1;
p1.ub = 1;
p1.sigma_b = [];
p1.alfa_b  = [];
p1.beta_b  = [];
p1.gamma_b = [];

problemas(end+1) = p1;

p2.nome = "ex2";
p2.ns = NS;

p2.a = A;
p2.b = B;

p2.funcs = FUNCS;

p2.tipo_a = 2;
p2.ua     = [];
p2.sigma_a = 1;
p2.alfa_a  = [];
p2.beta_a  = [];
p2.gamma_a = [];

p2.tipo_b = 1;
p2.ub = 1;
p2.sigma_b = [];
p2.alfa_b  = [];
p2.beta_b  = [];
p2.gamma_b = [];

problemas(end+1) = p2;

p3.nome = "ex3";
p3.ns = NS;

p3.a = A;
p3.b = B;

p3.funcs = FUNCS;

p3.tipo_a = 1;
p3.ua     = -1;
p3.sigma_a = [];
p3.alfa_a  = [];
p3.beta_a  = [];
p3.gamma_a = [];

p3.tipo_b = 3;
p3.ub = [];
p3.sigma_b = [];
p3.alfa_b  = -1;
p3.beta_b  = 2;
p3.gamma_b = -1;

problemas(end+1) = p3;

%%%%%

p4.nome = "calor";
p4.ns = NS;

p4.a = 0;
p4.b = 10;

p4.funcs.p = @(x)  0;
p4.funcs.q = @(x)  -1/100;
p4.funcs.r = @(x)  -1/5;

p4.tipo_a = 1;
p4.ua     = 40;
p4.sigma_a = [];
p4.alfa_a  = [];
p4.beta_a  = [];
p4.gamma_a = [];

p4.tipo_b = 1;
p4.ub = 200;
p4.sigma_b = [];
p4.alfa_b  = [];
p4.beta_b  = [];
p4.gamma_b = [];

problemas(end+1) = p4;


CREFS = [0.1 0.01 0.001 0.0001];
K = 0.001;
uref = 70;
W = 10;
T = 0.1;

for i = 1 : length(CREFS)
    cref = CREFS(i);
    p.ns = NS;

    p.a = 0;
    p.b = 1;

    p.nome = ["resfriador-" strrep(num2str(cref), ".", "-")];

    C = (2*W + 2*T)/T/W * cref
    f = C * uref

    p.funcs.p = @(x)  0;
    p.funcs.q = @(x)  - C / K;
    p.funcs.r = @(x)  - f / K;

    % -20200 * cref;
    % -1414000;
    % p.funcs.p = @(x)  0;
    % p.funcs.q = @(x)  - 20.2 * cref;
    % p.funcs.r = @(x)  - 1414;

    p.tipo_a = 1;
    p.ua     = 160;
    p.sigma_a = [];
    p.alfa_a  = [];
    p.beta_a  = [];
    p.gamma_a = [];

    p.tipo_b = 3;
    p.ub = 200;
    p.sigma_b = [];
    p.alfa_b  = 0.001;
    p.beta_b  = cref;
    p.gamma_b = 70*cref;

    problemas = [problemas, p];
endfor

%%%%%

for p = problemas
    p = p{:};
    data = {};
    leg = {};

    for n = p.ns
        [x, u] = solve(p.a, p.b, n, p);
        data = [data, {x; u;}];
        leg = [leg; ["k = " num2str(n)]];
    endfor

    numData = size(data)(2);
    linStyle = '--';
    plotData = data;
    plotData = [plotData; fillcell(numData, '--')];
    plotData = [plotData; fillcell(numData, 'LineWidth')];
    plotData = [plotData; fillcell(numData, 2)];

    plot(plotData{:});
    legend(leg{:});
    title(p.nome);
    grava_grafico(["saida/" p.nome "-sol"]);
    grava_grafico(["saida/" p.nome "-sol"], "png");
endfor
