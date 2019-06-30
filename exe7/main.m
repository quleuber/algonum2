function main()

lambda = 3.4647;
% lambda = 3;

tol = 1e-7;
itmax = 100;

tams = [11 301 1001];

% for lambda = lambdas
    % lambda

    for n = tams
        n

        met = "mas"
        tic;
        [x, u, iter, Fu, resvec] = mas(n, lambda, tol, itmax);
        t = toc
        title([met " : " "n = " num2str(n)])
        grava_grafico([ "plot/" met "_" num2str(n) ], "png");
        semilogy(resvec);
        axis([0 10]);
        grava_grafico([ "plot/resvec/" met "_" num2str(n) ], "png");
        printf("\n");

        met = "newton"
        tic
        [x, u, iter, Fu, resvec] = newton(n, lambda, tol, itmax);
        t = toc
        title([met " : " "n = " num2str(n)])
        grava_grafico([ "plot/" met "_" num2str(n) ], "png");
        semilogy(resvec);
        grava_grafico([ "plot/resvec/" met "_" num2str(n) ], "png");
        printf("\n");

        met = "newtonmod"
        tic
        [x, u, iter, Fu, resvec] = newton_mod(n, lambda, tol, itmax);
        t = toc
        title([met " : " "n = " num2str(n)])
        grava_grafico([ "plot/" met "_" num2str(n) ], "png");
        semilogy(resvec);
        grava_grafico([ "plot/resvec/" met "_" num2str(n) ], "png");
        printf("\n");

        % met = "newtonaprox"
        % tic
        % [x, u, iter, Fu, resvec] = newton_aprox(n, lambda, tol, itmax);
        % t = toc
        % title([met " : " "n = " num2str(n)])
        % grava_grafico([ "plot/" met "_" num2str(n) ], "png");
        % semilogy(resvec);
        % grava_grafico([ "plot/resvec/" met "_" num2str(n) ], "png");
        % printf("\n");

        printf("\n\n");

    endfor

% break;
% endfor

endfunction
