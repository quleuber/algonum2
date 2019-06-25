function main(lambda = 3)



tol = 1e-7;
itmax = 100;

% tams = [11 301 1001];

% % 0 a 6
% lambdas = linspace(0, 6, 2*6+1); 

% for lambda = lambdas
    % lambda

    % for n = tams

        n = 20;

        % newton(n, lambda, tol, itmax);
        mas(n, lambda, tol, itmax);

        grava_grafico([num2str(n)], "png"); %num2str(lambda) "_" 


    % endfor
    % break;

% endfor



endfunction