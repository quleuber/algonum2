function [x, u, iter, Fu, resvec] = newton_mod(n, lambda, tol, itmax);
%
% Aplicação do método de newton para um 
% problema unidimensional
%
	% Inicializando ...
	x = zeros(n,1);
	h = 1/(n-1);

	% Discretizando ...
	for i = 1:n
		x(i) = (i-1)*h;
	end

	% Inicializando variáveis
	u = zeros(n,1);
	Fu = func(u, x, h, lambda, n);
	r = norm(Fu,inf);
	delta = r*tol;
	resvec = [r];

	% Processo iterativo
	iter = 0;
	J0 = jacob(u, h, lambda, n);

	while ((r > delta) && (iter < itmax))
		% J s = - Fu;
		s = J0 \ -Fu;
		u = u + s;
		Fu = func(u,x,h,lambda,n);
        r = norm(Fu,inf);
		resvec(end+1) = r;
		iter++;
	endwhile

	% printf("Convergencia obtida apos %d iteracoes\n",iter);
	% printf("Resíduo =  %.9f\n",r);
	plot(x,u);

endfunction
