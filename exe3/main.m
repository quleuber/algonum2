graphics_toolkit gnuplot; 

TOL = 1e-6;
RTOL = 1e-6;
MAXIT = 10000;

X_HI = 200;

GMRES_K.Ragusa18 = 10;

function write_resvec(file, vc)
    for i = 1 : length(vc)
        fprintf(file, "%d %.8f\n", i, vc(i));
    endfor
endfunction

% Parâmetros

args = argv();

strMethod = args{1};
strMatFilename   = args{2};

[folder, name] = fileparts(strMatFilename);
matpath = [folder filesep name]  % print

pathParts = strsplit(matpath, "/");
if pathParts{1} == "matrizes"
    pathParts = pathParts(2:end);
endif

matpath = fullfile(pathParts{:});
outfd = fullfile("saida", matpath);
mkdir(outfd);


% Carrega matriz

load(strMatFilename);

A = Problem.A;
n = rows(A)  % print
b = A * ones(n,1);

filenameInfo = fullfile(outfd, "info.txt");
fileInfo = fopen(filenameInfo, "w");

fprintf(fileInfo, "%6s %4s %8s %8s %12s %14s %14s\n",
    "k",
    "flag",
    "ciclos",
    "iter",
    "tempo",
    "res",
    "normx"
);

function [M1, M2] = pre_nope(A)
    M1 = [];
    M2 = [];
endfunction

function [M1, M2] = pre_icc0(A)
    opts.type = "nofill";
    L = ichol(A, opts);
    M1 = L;
    M2 = [];
endfunction

function [M1, M2] = pre_iccn(A)
    opts.type = "ict";
    opts.droptol = 1e-4;
    L = ichol(A, opts);
    M1 = L;
    M2 = [];
endfunction

function [M1, M2] = pre_ilu0(A)
    opts.type = "nofill";
    [L, U] = ilu(A, opts);
    M1 = L;
    M2 = U;
endfunction

function [M1, M2] = pre_ilun(A)
    opts.type = "crout";
    opts.droptol = 1e-4;
    [L, U] = ilu(A, opts);
    M1 = L;
    M2 = U;
endfunction

if strcmp(strMethod, "pcg") == 1
    metodos = {
        @pre_nope, "orig", "Original";
        @pre_icc0, "icc0", "ICC(O)";
        @pre_iccn, "iccn", "ICC" ;
    };

    legs = metodos(:,3);
    vecs = {};

    for i = 1 : rows(metodos)
        metodo = metodos{i,1};
        nomeMetodo = metodos{i,2};

        % min(min(A))

        tic;
        [M1, M2] = metodo(A);
        [x,flag,relres,iter,resvec] = pcg(A, b, TOL, MAXIT, M1, M2);
        elapsed = toc;    

        vecs{1, i} = 1 : length(resvec);
        vecs{2, i} = resvec;

        filename = fullfile(outfd, ["resvec." nomeMetodo ".dat"]);

        file = fopen(filename, "w");
        write_resvec(file, resvec);

        fprintf(fileInfo, "%6d ", n);
        fprintf(fileInfo, "%4d ", flag);
        fprintf(fileInfo, "%8d ", 0);
        fprintf(fileInfo, "%8d ", iter);
        fprintf(fileInfo, "%12.1f ", elapsed);
        fprintf(fileInfo, "%14g ", norm(relres, 2));
        fprintf(fileInfo, "%14g ", norm(x, 2));
        % fprintf(fileInfo, "%7d ", );
        fprintf(fileInfo, "\n");

    endfor

    title(name);
    semilogy(vecs{:});
    legend(legs{:});
    if X_HI
        axis([0 X_HI]);
    endif

    grava_grafico(fullfile(outfd, "resvec.plot"));

    % plot(resvec);
    % pause;


elseif strcmp(strMethod, "gmres") == 1
    metodos = {
        @pre_nope, "orig", "Original";
        @pre_ilu0, "ilu0", "ILU(O)";
        @pre_ilun, "ilun", "ILU" ;
    };

    name
    k = GMRES_K.(name)

    legs = metodos(:,3);
    vecs = {};

    for i = 1 : rows(metodos)
        metodo = metodos{i,1};
        nomeMetodo = metodos{i,2};

        tic;
        [M1, M2] = metodo(A);
        [x,flag,relres,iter,resvec] = gmres(A, b, k, RTOL, MAXIT);
        elapsed = toc;

        legs{i} = ['k = ' num2str(k)];
        vecs{1,i} = 1 : length(resvec);
        vecs{2,i} = resvec;
    
        filename = fullfile(outfd, ["resvec." num2str(k) ".dat"]);
        file = fopen(filename, "w");
        write_resvec(file, resvec);

        fprintf(fileInfo, "%6d ", k);
        fprintf(fileInfo, "%4d ", flag);
        fprintf(fileInfo, "%8d ", iter(1));
        fprintf(fileInfo, "%8d ", iter(2));
        fprintf(fileInfo, "%12.1f ", elapsed);
        fprintf(fileInfo, "%14g ", norm(relres, 2));
        fprintf(fileInfo, "%14g ", norm(x, 2));
        % fprintf(fileInfo, "%7d ", );
        fprintf(fileInfo, "\n");

        % plot(resvec);
        % pause;
    endfor

    title(name);
    semilogy(vecs{:});
    legend(legs{:});
    if X_HI
        axis([0 X_HI]);
    endif

    grava_grafico(fullfile(outfd, "resvec.plot"));

else
    printf("Método inexistente %s\n", strMethod);
endif
