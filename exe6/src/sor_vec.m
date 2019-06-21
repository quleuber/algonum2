args = argv();
if length(args) < 2
    printf("executável de montagem do sistema precisa de 2 parâmetros\n");
    exit(1);
endif

n = str2num(args{1});
m = str2num(args{2});

outfd = "saida";
mkdir(outfd);

name = "NAME"
num = n * m; num

hx = (B_B - B_A) / (n - 1);
hy = (B_D - B_C) / (m - 1);

_2hx  = (2*hx);
_2hy  = (2*hy);
_hx2i = (hx^(-2));
_hy2i = (hy^(-2));

#define D  vD(i)
#define B  vB(i)
#define A  vA(i)
#define C  vC(i)
#define E  vE(i)
#define R  vR(i)


tic;

vA = zeros(num, 1);
vB = zeros(num, 1);
vC = zeros(num, 1);
vD = zeros(num, 1);
vE = zeros(num, 1);
vR = zeros(num, 1);

% ================ CÁLCULO DOS COEFICIENTES ================ %

#define INIT 

#define _B  B = Bi;
#define _D  D = Di;
#define _A  A = Ai;
#define _C  C = Ci;
#define _E  E = Ei;

#define _R  R = F;

#define INC_PT \
    x += hx; \
    i++;
#define INC_LN \
    x = B_A; \
    y += hy; \
    i++;


i = 1;
x = B_A;
y = B_C;

% 1
#ifdef REPLC_YD_XD
    INIT
    REPLC_YD_XD
#else
    _R
    _A
    _E
    _C
#endif
AFTER_YD_XD


for j = 2 : n-1
    INC_PT

    % 2
    #ifdef REPLC_YD
        INIT
        REPLC_YD
    #else
        _R
        _A
        _E
        _C
        _B
    #endif
    AFTER_YD


endfor


INC_PT

% 3
#ifdef REPLC_YD_XU
    INIT
    REPLC_YD_XU
#else
    _R
    _A
    _E
    _B
#endif
AFTER_YD_XU




for ln = 2 : m-1
    INC_LN

    % 4
    #ifdef REPLC_XD
        INIT
        REPLC_XD
    #else
        _R
        _A
        _D
        _E
        _C
    #endif
    AFTER_XD


    for j = 2 : n-1
        INC_PT

        % 5
        _R
        _A
        _D
        _E
        _C
        _B

        AFTER_MID

    endfor


    INC_PT

    % 6
    #ifdef REPLC_XU
        INIT
        REPLC_XU
    #else
        _R
        _A
        _D
        _E
        _B
    #endif
    AFTER_XU


endfor



INC_LN

% 7
#ifdef REPLC_YU_XD
    INIT
    REPLC_YU_XD
#else
    _R
    _A
    _D
    _C
#endif
AFTER_YU_XD



for j = 2 : n-1
    INC_PT

    % 8
    #ifdef REPLC_YU
        INIT
        REPLC_YU
    #else
        _R
        _A
        _D
        _C
        _B
    #endif
    AFTER_YU


endfor


INC_PT

% 9
#ifdef REPLC_YU_XU
    INIT
    REPLC_YU_XU
#else
    _R
    _A
    _D
    _B
#endif
AFTER_YU_XU


AFTER_ALL



% ================ EXECUÇÃO DO SOR ================ %

#define U    u(i)
#define U_D  u(i-n)
#define U_B  u(i-1)
#define U_A  u(i  )
#define U_C  u(i+1)
#define U_E  u(i+n)

#define OPENCALC    U = (1 - W) * U  +  W / A * ( R ...
#define C_B             - (U_B * B) ...
#define C_D             - (U_D * D) ...
#define C_C             - (U_C * C) ...
#define C_E             - (U_E * E) ...
#define CLOSECALC   );

u = zeros(num, 1);
% oldu = zeros(num, 1);

for iter = 1 : min(num, MAXIT)


oldu = u;

i = 1;
x = B_A;
y = B_C;

% 1
OPENCALC
    C_C
    C_E
CLOSECALC

for j = 2 : n-1
    INC_PT

    % 2
    OPENCALC
        C_B
        C_C
        C_E
    CLOSECALC

endfor


INC_PT

% 3
OPENCALC
    C_B
    C_E
CLOSECALC



for ln = 2 : m-1
    INC_LN

    % 4
    OPENCALC
        C_D
        C_C
        C_E
    CLOSECALC

    for j = 2 : n-1
        INC_PT

        % 5
        OPENCALC
            C_B
            C_D
            C_C
            C_E
        CLOSECALC
    endfor


    INC_PT

    % 6
    OPENCALC
        C_B
        C_D
        C_E
    CLOSECALC

endfor



INC_LN

% 7
OPENCALC
    C_D
    C_C
CLOSECALC


for j = 2 : n-1
    INC_PT

    % 8
    OPENCALC
        C_D
        C_C
        C_B
    CLOSECALC
endfor


INC_PT

% 9
OPENCALC
    C_B
    C_D
CLOSECALC


sc = max(norm(oldu, inf), 1);
err = norm(u - oldu, inf);
errrel = err / sc;
if ( norm(u - oldu, inf) / sc <= TOL )
    break;
endif


endfor


% ===== FIM ===== %

iter
errrel

t = toc; t

b_a = B_A;
b_b = B_B;
b_c = B_C;
b_d = B_D;

outname = [ outfd "/" name "_" num2str(n) "_" num2str(m) "_sor2" ];

save("-binary", outname
    , "name", "n", "m"
    , "b_a", "b_b", "b_c", "b_d"
    , "u", "iter"
);

txtfile = [outname ".txt"];
fh = fopen(txtfile, "w");
fprintf(fh, "t = %f\\n", t);
fclose(fh);

fprintf("\\n\\n");
