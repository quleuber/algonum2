function [x,u] = a_explicito(n,dt,npassos,suffix="",tol)
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
u(n,1) = 50;

lambda = Kappa*dt/(h*h);

for k = 1:npassos-1

    # u(0,t) = 100
    # u(L,t) =  50
    u(1,k+1) = 100;
    u(n,k+1) = 50;
 
    for i = 2:(n-1)
        u(i,k+1) = u(i,k) + lambda * (u(i-1,k) - 2*u(i,k) + u(i+1,k));
    end

    result = u(:,k+1);
    est = k+1;
    if( norm(u(:,k+1)-u(:,k), inf) <= tol )
        printf("Parou na iteração: %d\n", est);
        break;
    endif
end

inc = (u(n,npassos) - u(n-1,npassos)) / h;
inc

% plot(x,u(:,1),x,u(:,2),x,u(:,5),x,u(:,npassos))
% legend('0','20','50','100')

plot(x,u(:,1),x,u(:,10),x,u(:,20),x,u(:,30),x,u(:,40),x,u(:,50),x,u(:,60),x,u(:,npassos));
legend(
    sprintf("t=%g", dt * 00),
    sprintf("t=%g", dt * 10),
    sprintf("t=%g", dt * 20),
    sprintf("t=%g", dt * 30),
    sprintf("t=%g", dt * 40),
    sprintf("t=%g", dt * 50),
    sprintf("t=%g", dt * 60),
    sprintf("t = dt * %d", est)
    %'t = npassos*dt'
);

%plot(x,u(:,1),x,u(:,10),x,u(:,20),x,u(:,30),x,u(:,40),x,u(:,50),x,u(:,60),x,u(:,npassos))
%legend('t=0.0','t=1.0','t=2.0','t=3.0','t=4.0','t=5.0','t=6.0','sol. estacionária')

name = ["1_explicito" suffix];
title(strrep(name, "_", " "));
grava_grafico(["saida/" name], tipo='png');
