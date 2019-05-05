graphics_toolkit gnuplot;
mkdir("saida/");

function xs = fillcell(n, x)
    xs = cell(1, n);
    xs = cellfun(@(blah) x, xs, 'UniformOutput', false);
end

function [x, u] = solve(a, b, n, p)
    [x, u] = pvc(a, b, n,
        p.tipo_a,p.ua,p.sigma_a,p.alfa_a,p.beta_a,p.gamma_a,
        p.tipo_b,p.ub,p.sigma_b,p.alfa_b,p.beta_b,p.gamma_b
    );
end

NAME = "ex";
A = 0;
B = 1;

NS = [10 100 1000 2000];

%%%%% PROBLEMAS %%%%%

problemas = {};

p1.nome = "ex1";

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

data = {};
leg = {};

for p = problemas
    p = p{:};

    hs = [];
    errs = [];

    for n = NS
        [x, u] = solve(A, B, n, p);

        f = @(x) x^2 + x - 1;
        xs = linspace(A, B, n)';
        u_exa = arrayfun(f, xs);
        err = u - u_exa;
        err = norm(err, inf);
        h = (B-A)/(n-1);
        hs = [hs, log(h)];
        errs = [errs, log(err)];
    endfor

    leg = [leg, p.nome];
    data = [data, {hs; errs}];
endfor

plotData = {};

h=figure(1);
W = 14; H = 10;
set(h,'PaperUnits', 'centimeters')
set(h,'PaperOrientation','portrait');
set(h,'PaperSize',[H,W])
set(h,'PaperPosition',[0,0,W,H])

colors = {'r', 'b', 'g'};
handlers = [];

for i = 1 : size(data)(2)
    hs = data{1,i};
    errs = data{2,i};

    p = polyfit(hs, errs, 1);
    fiterrs = polyval(p, hs);

    hnlr1 = plot(hs, errs,    [colors{i} 'x'], 'LineWidth', 2); hold on;
    hdlr2 = plot(hs, fiterrs, [colors{i} '-'], 'LineWidth', 2); hold on;

    handlers = [handlers, hdlr2];

    % plotData = [plotData, {hs; errs;    'x'; 'LineWidth'; 2}];
    % plotData = [plotData, {hs; fiterrs; '-'; 'LineWidth'; 2}];
endfor

% num = size(plotData)(2);
% linStyle = '--';
% plotData = [plotData; fillcell(num, 'x')];
% plotData = [plotData; fillcell(num, 'LineWidth')];
% plotData = [plotData; fillcell(num, 2)];
% plot(plotData{:});

legend(handlers, leg, "location", "eastoutside");

xlabel("log h");
ylabel("log err");

grava_grafico(["saida/" "errs"]);
grava_grafico(["saida/" "errs"], "png");
