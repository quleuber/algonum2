function [x, u, iter, Fu] = newton(n, lambda, tol, itmax);
%
% Aplicação do método de newton para um 
% problema unidimensional
%
%       inicializando ...
        x = zeros(n,1);
	h = 1/(n-1);

%       discretizando ...
	for i=1:n
            x(i) = (i-1)*h;
	end

%       inicializando variáveis ...	
	u = zeros(n,1);
	Fu = func(u, x, h, lambda, n);
        r = norm(Fu,inf);
        delta = r*tol;

%       Processo iterativo ...
	iter = 0;

	while ((r > delta) && (iter < itmax))
		J = jacob(u,h,lambda,n);
		% J s = - Fu;
		s = J\-Fu;
		u = u + s;
		Fu = func(u,x,h,lambda,n);
                r = norm(Fu,inf);
		iter++;
	endwhile
	printf("Convergencia obtida apos %d iteracoes\n",iter);
        printf("Resíduo =  %f\n",r);
        plot(x,u);

endfunction
	
