function J = jacob(u, h, lambda, n)
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

	for i=2:n-1
		J(i,i-1) = 1;
		J(i,i+1) = 1;
		J(i,i) = -2 + (h^2)*lambda * exp(u(i));
	end

endfunction
