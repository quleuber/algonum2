graphics_toolkit gnuplot; 

function write_resvec(file, vc)
    for i = 1 : length(vc)
        fprintf(file, "%d %.8f\n", i, vc(i));
    endfor
endfunction

function ks = make_ks(n, quant = 5)
    kmax = n / 2;
    ks = linspace(0, floor(kmax/quant)*quant, quant+1);
    ks = ks(2 : length(ks));
    if ks(length(ks)) != n
        ks(length(ks) + 1) = n;
    endif
endfunction

args = argv();

strMethod = args{1};
strFilename   = args{2};

[folder, name] = fileparts(strFilename)  % print
matpath = [folder "/" name];

load(strFilename);

A = Problem.A;
n = rows(A)  % print
b = A * ones(n,1);

TOL = 1e-6;
RTOL = 1e-6;
MAXIT = 10000;

X_HI = []

outfd = ["saida/" matpath];
mkdir(outfd);

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

if strcmp(strMethod, "pcg") == 1
    tic;
    [x,flag,relres,iter,resvec] = pcg(A, b, TOL, MAXIT);
    elapsed = toc;

    filename = fullfile(outfd, "resvec.dat");

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

    semilogy(resvec);
    title(name);
    if X_HI
        axis([0 X_HI]);
    endif
    
    grava_grafico(fullfile(outfd, "resvec.plot"));

    % plot(resvec);
    % pause;
elseif strcmp(strMethod, "gmres") == 1
    ks = make_ks(n)
    legs = {};
    vecs = {};
    for i = 1 : length(ks)  % k = ks
        k = ks(i)
        tic;
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

    semilogy(vecs{:});
    title(name);
    legend(legs{:});
    if X_HI
        axis([0 X_HI]);
    endif

    grava_grafico(fullfile(outfd, "resvec.plot"));

else
    printf("Método inexistente %s\n", strMethod);
endif
