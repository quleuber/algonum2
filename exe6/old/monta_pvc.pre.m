function [mA,vR] = monta_pvc(prob, n, m)
    kappa   = prob.kappa;
    beta_x  = prob.beta_x;
    beta_y  = prob.beta_y;
    gamma   = prob.gamma;
    f       = prob.f;

    cup     = prob.cond.up;
    cdown   = prob.cond.down;
    cright  = prob.cond.right;
    cleft   = prob.cond.left;

    b_a   = prob.a;
    b_b   = prob.b;
    b_c   = prob.c;
    b_d   = prob.d;

    num = n * m;

    hx = (b_b - b_a) / (n - 1);
    hy = (b_d - b_c) / (m - 1);

    # % TODO colocar funções do problema em x,y
    # _a = @(i) 2 * kappa * (hx^-2 + hy^-2) + gamma(i);
    # _b = @(i) -kappa * (hx^-2) - beta_x(i) / (2*hx);
    # _c = @(i) -kappa * (hx^-2) + beta_x(i) / (2*hx);
    # _d = @(i) -kappa * (hy^-2) - beta_y(i) / (2*hy);
    # _e = @(i) -kappa * (hy^-2) + beta_y(i) / (2*hy);

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

    #define Ai  2 * kappa * (_hx2i + _hy2i) + gamma(x,y)
    #define Bi  -kappa * (_hx2i) - beta_x(x,y) / (_2hx)
    #define Ci  -kappa * (_hx2i) + beta_x(x,y) / (_2hx)
    #define Di  -kappa * (_hy2i) - beta_y(x,y) / (_2hy)
    #define Ei  -kappa * (_hy2i) + beta_y(x,y) / (_2hy)

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

    #define _R  R = f(x,y);

    #define INC_PT \
        x = x + hx; \
        i = i + 1;
    #define INC_LN \
        x = b_a; \
        y = y + hy; \
        i = i + 1;

    #   e
    # b a c
    #   d

    # 7 8 9
    # 4 5 6
    # 1 2 3

    i = 1;
    x = b_a;
    y = b_c;

    % 1
    _R
    _A
    _E
    _C


    for j = 2 : n-1
        INC_PT

        % 2
        _R
        _A
        _E
        _C
        _B
    endfor


    INC_PT

    % 3
    _R
    _A
    _E
    _B

    for ln = 2 : m-1
        INC_LN

        % 4
        _R
        _A
        _D
        _E
        _C

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
        _R
        _A
        _D
        _E
        _B

    endfor

    INC_LN

    % 7
    _R
    _A
    _D
    _C


    for j = 2 : n-1
        INC_PT

        % 8
        _R
        _A
        _D
        _C
        _B
    endfor


    INC_PT

    % 9
    _R
    _A
    _D
    _B

endfunction
