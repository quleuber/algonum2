function [mA,vB] = monta_pvc(prob, n, m)
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
    vB = zeros(num, 1);

    #define 2HX (2*hx)
    #define 2HY (2*hy)
    #define HX2i (hx^(-2))
    #define HY2i (hy^(-2))

    #define ID  A(i, i-n)
    #define IB  A(i, i-1)
    #define IA  A(i, i)  
    #define IC  A(i, i+1)
    #define IE  A(i, i+n)

    #define A   2 * kappa * (HX2i + HY2i) + gamma(x,y);
    #define B   -kappa * (HX2i) - beta_x(x,y) / (2HX);
    #define C   -kappa * (HX2i) + beta_x(x,y) / (2HX);
    #define D   -kappa * (HY2i) - beta_y(x,y) / (2HY);
    #define E   -kappa * (HY2i) + beta_y(x,y) / (2HY);

    #define _B  mA(i, i-1) = B;
    #define _D  mA(i, i-n) = D;
    #define _A  mA(i, i  ) = A;
    #define _C  mA(i, i+1) = C;
    #define _E  mA(i, i+n) = E;

    #define _R  vB(i) = f(x,y);

    #define INC_PT \
        x = x + hx; \
        i = i + 1;
    #define INC_LN \
        x = b_a; \
        y = y + hy; \
        i = i + 1;

    #   E
    # B A C
    #   D

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
