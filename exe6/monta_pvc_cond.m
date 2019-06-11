function [mA,vR] = monta_pvc_cond(prob, n, m)
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

    

# Usa variáveis x e y

#   e
# b a c
#   d




    % 1
            
    mA(i, i  ) = 1; 
    vR(i)  = 2000;
    
    for j = 2 : n-1
        
        x = x + hx; 
        i = i + 1;

        % 2
                    
    mA(i, i  ) = 1; 
    vR(i)  = 2000;
        
    endfor



    
        x = x + hx; 
        i = i + 1;

    % 3
            
    mA(i, i  ) = 1; 
    vR(i)  = 2000;
    
    for ln = 2 : m-1
        
        x = b_a; 
        y = y + hy; 
        i = i + 1;

        % 4
                    
    mA(i, i  ) = 1; 
    vR(i)  = 1000;
        
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
                    
    mA(i, i  ) = 1; 
    vR(i)  = 1000;
        
    endfor



    
        x = b_a; 
        y = y + hy; 
        i = i + 1;

    % 7
            
    mA(i, i  ) = 1; 
    vR(i)  = 2000;
    

    for j = 2 : n-1
        
        x = x + hx; 
        i = i + 1;

        % 8
                    
    mA(i, i  ) = 1; 
    vR(i)  = 2000;
        
    endfor


    
        x = x + hx; 
        i = i + 1;

    % 9
            
    mA(i, i  ) = 1; 
    vR(i)  = 2000;
    


endfunction
