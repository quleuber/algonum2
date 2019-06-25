function Gu = func(u, x, h, lambda, n)

    Gu = zeros(n,1);
    % Gu(1) = 0.0  (condição de contorno)
	for i=2:n-1
            Gu(i) = ( u(i-1) + u(i+1) + (h^2)*(lambda * exp(u(i)) - pi^2 * sin(pi*x(i)) + lambda*exp(sin(pi*x(i)))) ) / 2;
	end
    % Gu(n) = 0.0 (condição de contorno)

endfunction