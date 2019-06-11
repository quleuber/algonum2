
name = "NAME"

args = argv();
if length(args) < 2
    printf("executável de montagem do sistema precisa de 2 argumentos")
endif

n = str2num(args{1});
m = str2num(args{2});

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

#define ID  A(i, i-n)
#define IB  A(i, i-1)
#define IA  A(i, i)  
#define IC  A(i, i+1)
#define IE  A(i, i+n)

#define Ai  2 * KAPPA * (_hx2i + _hy2i) + GAMMA
#define Bi  -KAPPA * (_hx2i) - BETA_X / (_2hx)
#define Ci  -KAPPA * (_hx2i) + BETA_X / (_2hx)
#define Di  -KAPPA * (_hy2i) - BETA_Y / (_2hy)
#define Ei  -KAPPA * (_hy2i) + BETA_Y / (_2hy)

#define B  mA(i, i-1)
#define D  mA(i, i-n)
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
#ifdef COND_YD_XD
    COND_YD_XD
#else
    _R
    _A
    _E
    _C
#endif

for j = 2 : n-1
    INC_PT

    % 2
    #ifdef COND_YD
        COND_YD
    #else
        _R
        _A
        _E
        _C
        _B
    #endif

endfor



INC_PT

% 3
#ifdef COND_YD_XU
    COND_YD_XU
#else
    _R
    _A
    _E
    _B
#endif

for ln = 2 : m-1
    INC_LN

    % 4
    #ifdef COND_XD
        COND_XD
    #else
        _R
        _A
        _D
        _E
        _C
    #endif

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
    #ifdef COND_XU
        COND_XU
    #else
        _R
        _A
        _D
        _E
        _B
    #endif

endfor



INC_LN

% 7
#ifdef COND_YU_XD
    COND_YU_XD
#else
    _R
    _A
    _D
    _C
#endif


for j = 2 : n-1
    INC_PT

    % 8
    #ifdef COND_YU
        COND_YU
    #else
        _R
        _A
        _D
        _C
        _B
    #endif

endfor


INC_PT

% 9
#ifdef COND_YU_XU
    COND_YU_XU
#else
    _R
    _A
    _D
    _B
#endif

toc;

function filename = filename(name, tag, n, m)
    filename = [ "dados/" name "_" tag "_" num2str(n) "_" num2str(m) ];
endfunction

save("-binary", filename(name, "sys", n, m), "mA", "vR");
