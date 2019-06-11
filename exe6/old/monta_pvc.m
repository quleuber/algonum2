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
    vR(i) = f(x,y);
    mA(i, i  ) = 2 * kappa * (_hx2i + _hy2i) + gamma(x,y);
    mA(i, i+n) = -kappa * (_hy2i) + beta_y(x,y) / (_2hy);
    mA(i, i+1) = -kappa * (_hx2i) + beta_x(x,y) / (_2hx);


    for j = 2 : n-1
        
        x = x + hx; 
        i = i + 1;

        % 2
        vR(i) = f(x,y);
        mA(i, i  ) = 2 * kappa * (_hx2i + _hy2i) + gamma(x,y);
        mA(i, i+n) = -kappa * (_hy2i) + beta_y(x,y) / (_2hy);
        mA(i, i+1) = -kappa * (_hx2i) + beta_x(x,y) / (_2hx);
        mA(i, i-1) = -kappa * (_hx2i) - beta_x(x,y) / (_2hx);
    endfor


    
        x = x + hx; 
        i = i + 1;

    % 3
    vR(i) = f(x,y);
    mA(i, i  ) = 2 * kappa * (_hx2i + _hy2i) + gamma(x,y);
    mA(i, i+n) = -kappa * (_hy2i) + beta_y(x,y) / (_2hy);
    mA(i, i-1) = -kappa * (_hx2i) - beta_x(x,y) / (_2hx);

    for ln = 2 : m-1
        
        x = b_a; 
        y = y + hy; 
        i = i + 1;

        % 4
        vR(i) = f(x,y);
        mA(i, i  ) = 2 * kappa * (_hx2i + _hy2i) + gamma(x,y);
        mA(i, i-n) = -kappa * (_hy2i) - beta_y(x,y) / (_2hy);
        mA(i, i+n) = -kappa * (_hy2i) + beta_y(x,y) / (_2hy);
        mA(i, i+1) = -kappa * (_hx2i) + beta_x(x,y) / (_2hx);

        for j = 2 : n-1
            
        x = x + hx; 
        i = i + 1;

            % 5
            vR(i) = f(x,y);
            mA(i, i  ) = 2 * kappa * (_hx2i + _hy2i) + gamma(x,y);
            mA(i, i-n) = -kappa * (_hy2i) - beta_y(x,y) / (_2hy);
            mA(i, i+n) = -kappa * (_hy2i) + beta_y(x,y) / (_2hy);
            mA(i, i+1) = -kappa * (_hx2i) + beta_x(x,y) / (_2hx);
            mA(i, i-1) = -kappa * (_hx2i) - beta_x(x,y) / (_2hx);
        endfor

        
        x = x + hx; 
        i = i + 1;
    
        % 6
        vR(i) = f(x,y);
        mA(i, i  ) = 2 * kappa * (_hx2i + _hy2i) + gamma(x,y);
        mA(i, i-n) = -kappa * (_hy2i) - beta_y(x,y) / (_2hy);
        mA(i, i+n) = -kappa * (_hy2i) + beta_y(x,y) / (_2hy);
        mA(i, i-1) = -kappa * (_hx2i) - beta_x(x,y) / (_2hx);

    endfor

    
        x = b_a; 
        y = y + hy; 
        i = i + 1;

    % 7
    vR(i) = f(x,y);
    mA(i, i  ) = 2 * kappa * (_hx2i + _hy2i) + gamma(x,y);
    mA(i, i-n) = -kappa * (_hy2i) - beta_y(x,y) / (_2hy);
    mA(i, i+1) = -kappa * (_hx2i) + beta_x(x,y) / (_2hx);


    for j = 2 : n-1
        
        x = x + hx; 
        i = i + 1;

        % 8
        vR(i) = f(x,y);
        mA(i, i  ) = 2 * kappa * (_hx2i + _hy2i) + gamma(x,y);
        mA(i, i-n) = -kappa * (_hy2i) - beta_y(x,y) / (_2hy);
        mA(i, i+1) = -kappa * (_hx2i) + beta_x(x,y) / (_2hx);
        mA(i, i-1) = -kappa * (_hx2i) - beta_x(x,y) / (_2hx);
    endfor


    
        x = x + hx; 
        i = i + 1;

    % 9
    vR(i) = f(x,y);
    mA(i, i  ) = 2 * kappa * (_hx2i + _hy2i) + gamma(x,y);
    mA(i, i-n) = -kappa * (_hy2i) - beta_y(x,y) / (_2hy);
    mA(i, i-1) = -kappa * (_hx2i) - beta_x(x,y) / (_2hx);

endfunction
