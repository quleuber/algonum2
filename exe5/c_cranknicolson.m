function [x,u] = c_cranknicolson(n,dt,npassos,suffix="", tol)
#
# Função para solução de um problema de valor inicial unidimensional
# n: número de pontos
#
# u_t - kappa * u_xx = 0

# Condições de contorno
# u(0,t) = 100
# u(L,t) =  50
# 
# Condições Iniciais
# u(0,0) = 100
# u(x,0) = 0
# u(L,0) = 50
#
# Constantes Físicas
Kappa = 0.835;
L = 10;

h = L/(n-1);
x = linspace(0,L,n);

u = zeros (n,npassos);
A = zeros (n,n);
B = zeros (n,n);
b = zeros (n,1);

u(1,1) = 100;
%u(n,1) = 50;

lambda = Kappa*dt/(2*h*h);

for k = 1:npassos-1

    A(1,1) = 1;
    %A(n,n) = 1;

    B(1,1) = 1;
    %B(n,n) = 1;

    for i = 2:(n-1)
        A(i,i-1) = -lambda;
        A(i,i) = (1 + 2*lambda);
        A(i,i+1) = -lambda;
        
        B(i,i-1) = lambda;
        B(i,i) = (1 - 2*lambda);
        B(i,i+1) = lambda;
    end

    % Condição de contorno de fluxo prescrito
    % an  -> an + cn
    A(n,n-1) = -(lambda/2); 
    A(n,n) = (1 + lambda/2);

    B(n,n-1) = (lambda/2);
    B(n,n) = (1 - lambda/2);

    b = B*u(:,k) + [0; ones(n-2,1); 0;] * dt;

    u(:,k+1) = A\b;

    result = u(:,k+1);
    est = k+1;
    if( norm(u(:,k+1)-u(:,k), inf) <= tol )
        printf("Parou na iteração: %d\n", est);
        break;
    endif
end

inc = (u(n,npassos) - u(n-1,npassos)) / h;
inc

%plot(x,u(:,1),x,u(:,10))
%legend('t=0.0','t=1.0')

plot(
    x,u(:,01),
    x,u(:,10),
    x,u(:,20),
    x,u(:,30),
    x,u(:,40),
    x,u(:,50),
    x,u(:,60),
    x, result %u(:,npassos)
);
legend(
    sprintf("t=%g", dt * 00),
    sprintf("t=%g", dt * 10),
    sprintf("t=%g", dt * 20),
    sprintf("t=%g", dt * 30),
    sprintf("t=%g", dt * 40),
    sprintf("t=%g", dt * 50),
    sprintf("t=%g", dt * 60),
    sprintf("t = dt * %d", est)
    % 't = npassos*dt'
);

name = ["3_cranknicolson" suffix];
title(strrep(name, "_", " "));
grava_grafico(["saida/" name], tipo='png');
