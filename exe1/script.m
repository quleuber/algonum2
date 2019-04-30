
function script
    global MAT_NAMES
    global TOL
    global MAXITER
    global W
    global OUTDIR

    for m = 1 : length(MAT_NAMES)
        matFile = MAT_NAMES{m}
        [_, matName] = fileparts(matFile);
        outName = [OUTDIR '/' matName];

        % printf("Carregando matriz\n"); tic
        % A = geramatriz(matFile);
        feval(matName);
        % toc

        n = size(A)(1)
        cnd = cond(A)

        [L, U, P] = lu(A);
        % printf('plotando A\n'); spy(A); pause;
        % printf('plotando L\n'); spy(L); pause;
        % printf('plotando U\n'); spy(U); pause;
        % printf('plotando P\n'); spy(P); pause;

        b = A * ones(n, 1);

        % Método direto
        printf('\n')
        printf('Executando método direto \n'); tic
        x = A\b;
        toc
        maxR = calcMaxR(A,b,x);
        printf('%g\n', maxR);


        printf('\n')
        printf('Aplicando `fatora` \n'); tic
        [MJ,MS,MSOR] = fatora(A,W);
        toc


        D = A .* eye(n); % Diagonal
        R = A - D;       % Resto (não diagonal)
        E = tril(A, -1); % Diagonal inferior
        F = triu(A, +1); % Diagonal superior


        printf('\n')
        printf('Executando Jacobi \n'); tic
        [x_j, iter_j, errs_j] = jacobi_custom({n, D, E, F, MJ}, b, TOL, MAXITER);
        toc
        maxR = calcMaxR(A, b, x_j);
        printf('%g\n', maxR);

        printf('\n')
        printf('Executando Seidel \n'); tic
        [x_s, iter_s, errs_s] = seidel_custom({n, D, E, F, MS}, b, TOL, MAXITER);
        toc
        maxR = calcMaxR(A, b, x_s);
        printf('%g\n', maxR);

        printf('\n')
        printf('Executando SOR \n'); tic
        [x_sor, iter_sor, errs_sor] = sor_custom({n, D, E, F, MSOR}, b, TOL, MAXITER, W);
        toc
        maxR = calcMaxR(A, b, x_sor);
        printf('%g\n', maxR);


        printf('\n');
        % printf('Executando Jacobi prof \n');
        % [x_jp, iter_jp, errs_jp] = jacobi(A, b, TOL, MAXITER);
        % maxR = calcMaxR(A, b, x_jp);
        % printf('%g\n', maxR);

        printf('\n');
        % printf('Executando Seidel prof \n');
        % [x_sp, iter_sp, errs_sp] = sor(A, b, TOL, MAXITER, 1);
        % maxR = calcMaxR(A, b, x_sp);
        % printf('%g\n', maxR);

        printf('\n');
        % printf('Executando SOR prof \n');
        % [x_sorp, iter_sof, errs_sorp] = sor(A, b, TOL, MAXITER, W);
        % maxR = calcMaxR(A, b, x_sorp);
        % printf('%g\n', maxR);


        % graficos = {
        %     errs_j      '-' 'Jacobi';
        %     errs_s      '-' 'Seidel';
        %     errs_sor    '-' 'SOR';
        %     errs_jp     '-.' 'Jacobi prof';
        %     errs_sp     '-.' 'Seidel prof';
        %     errs_sorp   '-.' 'SOR prof';
        % };

        % semilogy(
        %     graficos'{1:2, :}
        % );
        % legend(
        %     graficos'{3, :}
        % )
        % suffix = ['-errs-w' num2str(W*100)];
        % grava_grafico([outName suffix]);
        % grava_grafico([outName suffix], 'pngcairo');
        % grava_grafico([outName suffix], 'svg');

        % pause;

        printf('\n\n\n');
        % break;
    endfor

endfunction

function maxR = calcMaxR(A, b, x)
    r = b - A * x;
    % maxR = max(r);
    maxR = norm(r, inf);
endfunction

% function plotar(m, str)
%     printf('plotando ', str, '\n'); spy(m); pause;
% endfunction

function [x, iter, errs] = jacobi_custom(args, b, tol, maxiter)
    [n, D, E, F, MJ] = args{:};

    x0 = zeros(n ,1);
    er = 1.0;
    errs = [];
    iter = 1;

    c = inv(D) * b;

    while (iter < maxiter)
        x = c + MJ * x0;
        % printf('i = %d : ', i)
        er = norm(x-x0,inf) / norm(x,inf);
        errs(iter) = er;
        if (er <= tol)
            er
            % x0 = x;
            % nx = c + MJ * x0;
            % erNext = norm(nx-x0,inf) / norm(nx,inf)
            printf('Executou %d iterações\n', iter);
            break;
        endif
        errs(iter) = er;
        iter = iter + 1;
        x0 = x;
    endwhile

endfunction

function [x, iter, errs] = seidel_custom(args, b, tol, maxiter)
    [n, D, E, F, MS] = args{:};

    x0 = zeros(n ,1);
    er = 1.0;
    errs = [];
    iter = 1;

    c = inv(E + D) * b;

    while (iter < maxiter)
        x = c + MS * x0;

        % printf('i = %d : ', i)
        er = norm(x-x0,inf) / norm(x,inf);
        errs(iter) = er;
        if (er <= tol)
            er
            % x0 = x;
            % nx = c + MS * x0;
            % erNext = norm(nx-x0,inf) / norm(nx,inf)
            printf('Executou %d iterações\n', iter);
            break;
        endif
        iter = iter + 1;
        x0 = x;
    endwhile

endfunction

function [x, iter, errs] = sor_custom(args, b, tol, maxiter, w)
    [n, D, E, F, MSOR] = args{:};

    x0 = zeros(n ,1);
    er = 1.0;
    errs = [];
    iter = 1;

    % c = inv(E + D) * b;
    c = w * inv(D + w*E) * b;

    while (iter < maxiter)
        %x = w * (c + MS * x0) + (1-w) * x0;
        x = c + MSOR * x0;

        % printf('i = %d : ', i)
        er = norm(x-x0,inf) / norm(x,inf);
        errs(iter) = er;
        if (er <= tol)
            er
            % x0 = x;
            % nx = c + MS * x0;
            % erNext = norm(nx-x0,inf) / norm(nx,inf)
            printf('Executou %d iterações\n', iter);
            break;
        endif
        iter = iter + 1;
        x0 = x;
    endwhile

endfunction

function xs = indices(v)
    xs = 1 : size(v)(2);
endfunction

