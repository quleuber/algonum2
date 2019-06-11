function [A,B] = monta_pvc_old(prob, n, m)
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

    N = n * m;

    hx = (b_b - b_a) / (n - 1);
    hy = (b_d - b_c) / (m - 1);

    % TODO colocar funções do problema em x,y
    _a = @(i) 2 * kappa * (hx^-2 + hy^-2) + gamma(i);
    _b = @(i) -kappa * (hx^-2) - beta_x(i) / (2*hx);
    _c = @(i) -kappa * (hx^-2) + beta_x(i) / (2*hx);
    _d = @(i) -kappa * (hy^-2) - beta_y(i) / (2*hy);
    _e = @(i) -kappa * (hy^-2) + beta_y(i) / (2*hy);

    a = @(i) idx_guard(_a, N, i);
    b = @(i) idx_guard(_b, N, i);
    c = @(i) idx_guard(_c, N, i);
    d = @(i) idx_guard(_d, N, i);
    e = @(i) idx_guard(_e, N, i);

    A = sparse(N, N);
    B = zeros(N,1);
    for i = 1:N
        B(i) = f(i);
    endfor

    for i = 1 : N
        if (i-n > 0)
            A(i, i-n) = d(i);
        endif
        if (i-1 > 0)
            A(i, i-1) = b(i);
        endif
            A(i, i)   = a(i);
        if (i+1 < N)
            A(i, i+1) = c(i);
        endif
        if (i+n < N)
            A(i, i+n) = e(i);
        endif
    endfor

    % BORDA INFERIOR
    cnd = cdown;
    switch cnd.tipo
        case 0
            val = cnd.val;
            i = 1;
            for k = 1 : n
                if chk(N,i-n)  A(i, i-n) = 0;  endif
                if chk(N,i-1)  A(i, i-1) = 0;  endif
                if chk(N,i  )  A(i, i  ) = 1;  endif
                if chk(N,i+1)  A(i, i+1) = 0;  endif
                if chk(N,i+n)  A(i, i+n) = 0;  endif
                if chk(N,i  )  B(i  ) = val;  endif
                i = i + 1;
            endfor
        case 1
            exit(1)
        case 2
            calpha = cond.alpha;
            cbeta  = cond.beta;
            cgamma = cond.gamma;
            i = 1;
            for k = 1 : n
                A(i) = A(i) + d(i) * (1 + hy * cbeta / calpha);
                B(i) = B(i) + d(i) * hy * cgamma / calpha;
            endfor
    endswitch

    % BORDA SUPERIOR
    cnd = cup;
    switch cnd.tipo
        case 0
            val = cnd.val;
            i = n * (m-1) + 1;
            for k = 1 : n
                if chk(N,i-n)  A(i, i-n) = 0;  endif
                if chk(N,i-1)  A(i, i-1) = 0;  endif
                if chk(N,i  )  A(i, i  ) = 1;  endif
                if chk(N,i+1)  A(i, i+1) = 0;  endif
                if chk(N,i+n)  A(i, i+n) = 0;  endif
                if chk(N,i  )  B(i) = val;  endif
                i = i + 1;
            endfor
        case 1
            exit(1);
        case 2
            calpha = cond.alpha;
            cbeta  = cond.beta;
            cgamma = cond.gamma;
            for k = 1 : n
                A(i) = A(i) + e(i) * (1 - hy * cbeta / calpha);
                B(i) = B(i) - e(i) * hy * cgamma / calpha;
            endfor
    endswitch

    % BORDA ESQUERDA
    cnd = cleft;
    switch cnd.tipo
        case 0
            val = cnd.val;
            i = 1;
            for k = 1 : m
                if chk(N,i-n)  A(i, i-n) = 0;  endif
                if chk(N,i-1)  A(i, i-1) = 0;  endif
                if chk(N,i  )  A(i, i  ) = 1;  endif
                if chk(N,i+1)  A(i, i+1) = 0;  endif
                if chk(N,i+n)  A(i, i+n) = 0;  endif
                if chk(N,i  )  B(i  ) = val;  endif
                i = i + n;
            endfor
        case 1
            exit(1)
        case 2
            calpha = cnd.alpha;
            cbeta  = cnd.beta;
            cgamma = cnd.gamma;
            i = 1;
            for k = 1 : n
                A(i) = A(i) + b(i) * (1 + hx * cbeta / calpha);
                B(i) = B(i) + b(i) * hx * cgamma / calpha;
            endfor
    endswitch

    % BORDA DIREITA
    cnd = cright;
    switch cnd.tipo
        case 0
            val = cnd.val;
            i = n;
            for k = 1 : m
                if chk(N,i-n)  A(i, i-n) = 0;  endif
                if chk(N,i-1)  A(i, i-1) = 0;  endif
                if chk(N,i  )  A(i, i  ) = 1;  endif
                if chk(N,i+1)  A(i, i+1) = 0;  endif
                if chk(N,i+n)  A(i, i+n) = 0;  endif
                if chk(N,i  )  B(i) = val;  endif
                i = i + n;
            endfor
        case 1
            exit(1);
        case 2
            calpha = cond.alpha;
            cbeta  = cond.beta;
            cgamma = cond.gamma;
            for k = 1 : n
                A(i) = A(i) + e(i) * (1 - hy * cbeta / calpha);
                B(i) = B(i) - e(i) * hy * cgamma / calpha;
            endfor
    endswitch

endfunction

function val = idx_guard(fn, N, i)
    val = 0;
    if 1 <= i && i <= N
        val = fn(i);
    endif
endfunction

function ret = chk(N, i)
    ret = (1 <= i && i <= N);
endfunction
