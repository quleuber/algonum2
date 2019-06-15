
args = argv();
if length(args) < 2
    printf("executável de montagem do sistema precisa de 2 parâmetros\n");
    exit(1);
endif

n = str2num(args{1});
m = str2num(args{2});

outfd = "dados";
mkdir(outfd);

name = "NAME"

num = n * m;
num

tic;

hx = (B_B - B_A) / (n - 1);
hy = (B_D - B_C) / (m - 1);

mA = sparse(num, num);
vR = zeros(num, 1);

_2hx  = (2*hx);
_2hy  = (2*hy);
_hx2i = (hx^(-2));
_hy2i = (hy^(-2));

#define Ai  (2 * KAPPA * (_hx2i + _hy2i) + GAMMA)
#define Bi  (-KAPPA * (_hx2i) - BETA_X / (_2hx))
#define Ci  (-KAPPA * (_hx2i) + BETA_X / (_2hx))
#define Di  (-KAPPA * (_hy2i) - BETA_Y / (_2hy))
#define Ei  (-KAPPA * (_hy2i) + BETA_Y / (_2hy))

#define D  mA(i, i-n)
#define B  mA(i, i-1)
#define A  mA(i, i  )
#define C  mA(i, i+1)
#define E  mA(i, i+n)
#define R  vR(i)

#define _B  B = Bi;
#define _D  D = Di;
#define _A  A = Ai;
#define _C  C = Ci;
#define _E  E = Ei;

#define _R  R = F;

#define INC_PT \
    x = x + hx; \
    i = i + 1;
#define INC_LN \
    x = B_A; \
    y = y + hy; \
    i = i + 1;

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
    endfor

    INC_PT

    % 6
    #ifdef REPLC_XU
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
    REPLC_YU_XU
#else
    _R
    _A
    _D
    _B
#endif
AFTER_YU_XU

toc;

b_a = B_A;
b_b = B_B;
b_c = B_C;
b_d = B_D;

filename = [ outfd "/" name "_" num2str(n) "_" num2str(m) "_sys" ];

save("-binary", filename, "mA", "vR", "b_a", "b_b", "b_c", "b_d");
