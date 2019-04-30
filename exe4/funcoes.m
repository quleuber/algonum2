function [p,q,r] = funcoes(a,b,n);

    h = (b-a)/(n-1);
    p =zeros(n,1);
    q =zeros(n,1);
    r =zeros(n,1);
    x = linspace(a,b,n);
    for i=1:n
        p(i) = -1/2;
        q(i) = 1;
        r(i) = x(i)^2 +1/2;
    endfor
 endfunction   