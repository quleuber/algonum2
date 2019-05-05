graphics_toolkit gnuplot;
mkdir("saida/");

function xs = fillcell(n, x)
    xs = cell(1, n);
    xs = cellfun(@(blah) x, xs, 'UniformOutput', false);
end

function [x, u] = solve(A, B, N, p)
    [x, u] = pvc(A, B, N,
        p.tipo_a,p.ua,p.sigma_a,p.alfa_a,p.beta_a,p.gamma_a,
        p.tipo_b,p.ub,p.sigma_b,p.alfa_b,p.beta_b,p.gamma_b
    );
end

NAME = "ex";
N = 10;
A = 0;
B = 1;

NS = [10 50 100];

%%%%% PROBLEMAS %%%%%

problemas = {};

p1.nome = "ex1";
p1.ns = NS;

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

problemas = [problemas, p1];

p2.nome = "ex2";
p2.ns = NS;

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

problemas = [problemas, p2];

p3.nome = "ex3";
p3.ns = NS;

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

problemas = [problemas, p3];

%%%%%

for p = problemas
    p = p{:};
    data = {};
    leg = {};

    for n = p.ns
        [x, u] = solve(A, B, n, p);
        data = [data, {x; u;}];
        leg = [leg; ["k = " num2str(n)]];
    endfor

    numData = size(data)(2);
    linStyle = '--';
    testPLot = [data; fillcell(numData, '--')];

    f = @(x) x^2 + x - 1;
    xs = linspace(A, B, n)';
    ys = arrayfun(f, xs);
    testPLot = [{xs; ys; '-'}, testPLot];
    leg = ["sol"; leg];

    plot(testPLot{:});
    legend(leg{:});
    title(p.nome);
    grava_grafico(["saida/" p.nome "-sol"], "png");
endfor
