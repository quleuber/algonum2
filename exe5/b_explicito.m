function [x,u] = explicito(n,dt,npassos,suffix="")
#
# Função para solução de um problema de valor inicial unidimensional
# n: número de pontos
#
# u_t - kappa * u_xx = 0
#
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

#npassos = tf/dt;

x = linspace(0,L,n);

u = zeros(n,npassos);
u(1,1) = 100;
% u(n,1) = 50;

lambda = Kappa*dt/(h*h);

for k = 1:npassos-1

    u(1,k+1) = 100; % Condição de contorno de valor prescrito

    for i = 2:(n-1)
        u(i,k+1) = u(i,k) + lambda * (u(i-1,k) - 2*u(i,k) + u(i+1,k));
    end

    % u(i-1)   u(i)           u(i+1)
    % (lambda) (1 - 2 lambda) (lambda)

    u(n,k+1) = u(n,k) + lambda * (u(n-1,k) - u(n,k)); % Condição de contorno de fluxo prescrito

    % Caso o algoritmo tenha atingido a tolerância desejada
    % if(norm(u(:,k+1) - u(:,k),Inf) <= tol)
    %     estac = k+1;
    %     u(:,k+1);
    %     printf("t = %d\n",estac);
    %     break;
    % end

end

plot(x,u(:,1),x,u(:,2),x,u(:,5),x,u(:,npassos))
legend('0','20','50','100')

%plot(x,u(:,1),x,u(:,10),x,u(:,20),x,u(:,30),x,u(:,40),x,u(:,50),x,u(:,60),x,u(:,npassos))
%legend('t=0.0','t=1.0','t=2.0','t=3.0','t=4.0','t=5.0','t=6.0','sol. estacionária')

name = ["2_explicito" suffix];
title(name);
grava_grafico(["saida/" name], tipo='png');
