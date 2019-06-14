function sor(prob, n, m)
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

    _a = @(i) 2 * kappa * (hx^-2 + hy^-2) + gamma(i);
    _b = @(i) -kappa * (hx^-2) - beta_x(i) / (2*hx);
    _c = @(i) -kappa * (hx^-2) + beta_x(i) / (2*hx);
    _d = @(i) -kappa * (hy^-2) - beta_y(i) / (2*hy);
    _e = @(i) -kappa * (hy^-2) + beta_y(i) / (2*hy);

    u = zeros(N)

    % Tratamento da primeira linha da discretização
    u(1) = (1-w)*u(1) + (w/a(1))*(f(1) - c(1)*u(2) - e(i)*u(1+n));
    for i = 2 : n-1 
        u(i) = (1-w)*u(i) + (w/a(i))*(f(i) - b(i)*u(i-1) - c(i)*u(i+1) - e(i)*u(i+n));
    endfor
    u(n) = (1-w)*u(n) + (w/a(n))*(f(n) - b(n)*u(n-1) - e(n)*u(2*n));

    % Tratamento das linhas genéricas

    for i = n + 1, 2*n + 1 : (m-2)*n + 1
        u(i) = (1-w)*u(i) + (w/a(i))*(f(i) - d(i)*u(i-n) - c(i)*u(i+1) - e(i)*u(i+n));
    endfor

    for i = 2*n, 3*n : (m-1)*n
        u(i) = (1-w)*u(i) + (w/a(i))*(f(i) - d(i)*u(i-n) - b(i)*u(i-1) - c(i)*u(i+1) - e(i)*u(i+n));
    endfor

    for j = 1 : m-2
        for i = 2 : n-1
            x = j*n + i;
            u(x) = (1-w)*u(x) + (w/a(x))*(f(x) - d(x)*u(x-n) - b(x)*u(x-1) - c(x)*u(x+1) - e(x)*u(x+n));
        endfor
    endfor

    % Tratamento da última linha
    i = (m-1)*(n+1);
    u(i) = (1-w)*u(i) + (w/a(i))*(f(i) - d(i)*u(i-n) - c(i)*u(i+1));
    for i = n*(m-1)+2, n*(m-1)+3 : m*n - 1
        u(i) = (1-w)*u(i) + (w/a(i))*(f(i) - d(i)*u(i-n) - b(i)*u(i-1) - c(i)*u(i+1));
    endfor
    i = m*n
    u(i) = (1-w)*u(i) + (w/a(i))*(f(i) - b(i)*u(i-1) - d(i)*u(i-n));

endfunction
