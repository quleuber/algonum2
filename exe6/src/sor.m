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


tic;

u = zeros(num, 1);


_2hx  = (2*hx);
_2hy  = (2*hy);
_hx2i = (hx^(-2));
_hy2i = (hy^(-2));

#define U    u(i)
#define U_D  u(i-n)
#define U_B  u(i-1)
#define U_A  u(i  )
#define U_C  u(i+1)
#define U_E  u(i+n)

# #define R  vR(i)

#define D  c_d
#define B  c_b
#define A  c_a
#define C  c_c
#define E  c_e
#define R  c_r

#define INIT  D = 0; B = 0; A = 0; C = 0; E = 0; R = 0;

#define _B  B = Bi;
#define _D  D = Di;
#define _A  A = Ai;
#define _C  C = Ci;
#define _E  E = Ei;
#define _R  R = F;

#define OPENCALC    U = (1 - W) * U  +  W / A * ( F ...
#define C_B             - U_B * B ...
#define C_D             - U_D * D ...
#define C_C             - U_C * C ...
#define C_E             - U_E * E ...
#define CLOSECALC   );

#define INC_PT \
    x += hx; \
    i++;
#define INC_LN \
    x = B_A; \
    y += hy; \
    i++;

#   e
# b a c
#   d

# 7 8 9
# 4 5 6
# 1 2 3

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
OPENCALC
    C_C
    C_E
CLOSECALC

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
    OPENCALC
        C_B
        C_C
        C_E
    CLOSECALC

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
OPENCALC
    C_B
    C_E
CLOSECALC

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
    OPENCALC
        C_D
        C_C
        C_E
    CLOSECALC

    for j = 2 : n-1
        INC_PT

        % 5
        _R
        _A
        _D
        _E
        _C
        _B

        OPENCALC
            C_B
            C_D
            C_C
            C_E
        CLOSECALC
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
    OPENCALC
        C_B
        C_D
        C_E
    CLOSECALC

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
OPENCALC
    C_D
    C_C
CLOSECALC


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
    OPENCALC
        C_D
        C_C
        C_B
    CLOSECALC

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
OPENCALC
    C_B
    C_D
CLOSECALC

t = toc; t

b_a = B_A;
b_b = B_B;
b_c = B_C;
b_d = B_D;

outname = [ outfd "/" name "_" num2str(n) "_" num2str(m) "_sor" ];

save("-binary", outname
    , "name", "n", "m"
    , "b_a", "b_b", "b_c", "b_d"
    , "u"
);

txtfile = [outname ".txt"];
fh = fopen(txtfile, "w");
fprintf(fh, "t = %f\\n", t);
fclose(fh);

fprintf("\\n\\n");
