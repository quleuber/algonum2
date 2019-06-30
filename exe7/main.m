function main()

lambda = 3.4647;
lambda = 3;

tol = 1e-7;
itmax = 100;

tams = [11 301 1001];

% for lambda = lambdas
    % lambda

    for n = tams
        n

        % n = 50;

        newton(n, lambda, tol, itmax);
        grava_grafico([ "plot/" "newton" "_" [num2str(n)] ], "png");

        mas(n, lambda, tol, itmax);
        grava_grafico([ "plot/" "mas" "_" num2str(n) ], "png");

        printf("\n\n");

    endfor

% break;
% endfor

endfunction
