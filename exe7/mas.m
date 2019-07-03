function [x, u, iter, Fu, resvec] = mas(n, lambda, tol, itmax)

    x = zeros(n,1);
	h = 1/(n-1);

    for i = 1:n
        x(i) = (i-1)*h;
	end

    u = zeros(n,1);
	Fu = func(u, x, h, lambda, n);
    r = norm(Fu,inf);
    delta = r * tol;
    resvec = [r];

    g = @(x) pi^2 * sin(pi*x) - lambda * exp(sin(pi*x));
    function R = fR(x, u)
		R = zeros(n, 1);
        % contorno
        i = 2 : n-1;
            R(i) = h^2 * ( g(x(i)) + lambda * exp(u(i)) );
        % contorno
	endfunction

    M = zeros(n, n);
    M(1,1) = 1;
    for i = 2 : n-1
        M(i, i-1) = -1;
        M(i, i  ) =  2;
        M(i, i+1) = -1;
    endfor
    M(n,n) = 1;

    iter = 0;
	while ((r > delta) && (iter < itmax))
		% M u' = u
        R = fR(x, u);
        u = M \ R;
        Fu = func(u,x,h,lambda,n);
        r = norm(Fu,inf);
        resvec(end+1) = r;
		iter++;
	endwhile

    % printf("Convergencia obtida apos %d iteracoes\n",iter);
    % printf("Resíduo =  %.9f\n",r);
    plot(x,u);

endfunction
