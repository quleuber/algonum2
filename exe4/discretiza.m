function [p,q,r] = discretiza(a, b, n, funcs)
    h = (b-a)/(n-1);
    p = zeros(n,1);
    q = zeros(n,1);
    r = zeros(n,1);
    x = linspace(a,b,n);
    for i=1:n
        p(i) = funcs.p(x(i));
        q(i) = funcs.q(x(i));
        r(i) = funcs.r(x(i));
    endfor
endfunction