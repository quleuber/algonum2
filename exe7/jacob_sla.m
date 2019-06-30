function J = jacob_sla(u, h, lambda, n, x)
%
% Calcula a Jacobiana de F na solução corrente para o problema:
%
% -u'' -lambda exp(u) = g(x) p/ 0<x<1
%  g(x) = pi^2 sen(pi*x) - lambda exp(pi*x)
%  u(0) = u(1) = 0;
%
%
%       condições de contorno
	J(1,1) = 1.0;
	J(1,2) = 0.0;

	J(n,n) = 1.0;
	J(n,n-1) = 0.0;

	% J(i,i-1) = 1;
	% J(i,i+1) = 1;
	% J(i,i) = -2 + (h^2)*lambda * exp(u(i));

	% fui = @(u, i)  u(i-1) - 2*u(i) + u(i+1) + (h^2)*(lambda * exp(u(i)) - pi^2 * sin(pi*x(i)) + lambda*exp(sin(pi*x(i))) );
	fui = @(ut, i)  ut(i-1) - 2*ut(i) + ut(i+1) + (h^2)*( lambda * exp(ut(i)) );

	for i = 2 : n-1
		j = i-1;

		temp = u;
		temp(j) += h;

		aux = fui(temp, i) - fui(u, i);
		J(i,j) = (aux)/h;
	end

	for i = 2 : n-1
		j = i  ;

		temp = u;
		temp(j) += h;

		aux = fui(temp, i) - fui(u, i);
		J(i,j) = (aux)/h;
	end

	for i = 2 : n-1
		j = i+1;

		temp = u;
		temp(j) += h;

		aux = fui(temp, i) - fui(u, i);
		J(i,j) = (aux)/h;
	end

endfunction
