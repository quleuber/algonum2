function main()

% LAMBDA = 3.465;
LAMBDA = 3.4647;
% LAMBDA = 3.475;
% LAMBDA = 3;

tol = 1e-7;
itmax = 100;

tams = [11 301]; % 11 301 1001

metodos = {
    "mas"          @mas;
    "newton"       @newton;
    "newtonmod"    @newton_mod;
    "newtonaprox"  @newton_aprox;
};

% PARA O GRÁFICO DE DISTÂNCIAS DOS PICOS
lambdas = linspace(3.46, 3.47, 11);

% % PARA O GRÁFICO COM VÁRIOS VALORES DE LAMBDA
% lambdas = linspace(3.39, 3.49, 11);

for n = tams
    n

    for im = 1 : size(metodos)(1)
        metname = metodos{im, 1}
        metfunc = metodos{im, 2};


        % % MELHOR LAMBDA

        % tic;
        % [x, u, iter, Fu, resvec] = metfunc(n, LAMBDA, tol, itmax);
        % t = toc;
        % title([metname " - " "n = " num2str(n)])
        % grava_grafico([ "plot/" metname "_" num2str(n) ], "png");
        % semilogy(resvec);
        % title([metname " - " "n = " num2str(n) " - " "resvec"]);
        % grava_grafico([ "plot/resvec/" metname "_" num2str(n) ], "png");
        % fprintf(stderr, "\n");


        % FAIXA DE LAMBDAS
        picos = [];
        dists = [];
        resultados = {};
        legs = {};

        printf("%9s %9s %9s %9s %9s\n", "lambda", "dist", "t", "iter", "res");

        for il = 1 : length(lambdas)  % lambda = lambdas
            lambda = lambdas(il);

            tic;
            [x, u, iter, Fu, resvec] = metfunc(n, lambda, tol, itmax);
            t = toc;

            pico = max(u);
            picos(il) = pico;

            resultados{1, il} = lambda;
            resultados{2, il} = x;
            resultados{3, il} = u;
            resultados{4, il} = pico;
            legs(il) = num2str(lambda);

            dist = abs(pico - 1);
            dists(end+1) = dist;

            res = resvec(end);
            printf("%9.4f %9.4f %9.4f %9d %9.4f\n", lambda, dist, t, iter, res);
        endfor
        printf("\n");

        % GRÁFICO DE DISTÂNCIAS DOS PICOS
        semilogy(lambdas, dists);
        title([metname " - " "n = " num2str(n) " - " "|max(u) - 1| x lambda"]);
        xlabel("\\lambda");
        ylabel("|max(u) - 1|");
        mkdir("plot/lambda_maxu/");
        grava_grafico([ "plot/lambda_maxu/" metname "_" num2str(n) ], "png");

        % % GRÁFICO PARA VÁRIOS VALORES DE LAMBDA
        % plot(resultados{2:3, :});
        % legend(legs{:});
        % title([metname " - " "n = " num2str(n) " - " "Multiplos Lambdas"]);
        % mkdir("plot/lambdas/");
        % grava_grafico([ "plot/lambdas/" metname "_" num2str(n) "_" "lambdas" ], "png");

    endfor
    printf("\n");

% break;
endfor

endfunction
