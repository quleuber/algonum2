function [x,u]=pvc(a,b,n,tipo_a,ua,sigma_a,alfa_a,beta_a,gamma_a,tipo_b,ub,sigma_b,alfa_b,beta_b,gamma_b);

% define variaveis principais
h = (b-a)/(n-1);
h2 = h*h;
x = linspace(a,b,n);
x = x';
f = zeros(n,1);
u = zeros(n,1);
A = zeros(n,n);

% considera valores especificos para as funcoes p, q e r
[p,q,r]=funcoes(a,b,n);

% monta sistema Au=f
A(1,1) = q(1) - 2 / h2;
A(1,2) = 1 / h2 + p(1) / (2*h);
f(1)   = r(1);
for i = 2:n-1
    A(i,i-1) = 1 / h2 - p(i)/(2*h);
    A(i,i)   = q(i) - 2 / h2;
    A(i,i+1) = 1 / h2 + p(i) / (2*h);
    f(i)     = r(i);
endfor
A(n,n-1) = 1 / h2 - p(n)/(2*h);
A(n,n)   = q(n) - 2 / h2;  
f(n)     = r(n);

fa = @(i)  q(i) - 2 / h2;
fb = @(i)  1 / h2 - p(i)/(2*h);
fc = @(i)  1 / h2 + p(i)/(2*h);

% aplica condicoes de contorno em x=a;
% b1 = ...;
switch tipo_a
case 1 
    A(1,1) = 1;
    A(1,2) = 0;
    f(1) = ua;
case 2
    A(1,1) = fa(1) + fb(1);
    f(1) = f(1) + fb(1) * h * sigma_a;
case 3
    A(1,1) = fa(1) + fb(1) * (1 + h * beta_a / alfa_a);
    f(1) = f(1) + fb(1) * h * gamma_a / alfa_a;
otherwise
    printf("Erro na Condicao de contorno"); 
end

% aplica condicoes de contorno em x=b;
% cn = ...;
switch tipo_b
case 1
    A(n,n) = 1;
    A(n, n-1) = 0;
    f(n) = ub;
case 2 
    A(n,n) = fa(n) + fc(n);
    f(n) = f(n) - fc(n) * h * sigma_b;
case 3
    A(n,n) = fa(n) + fc(n) * (1 - h * beta_b / alfa_b);
    f(n) = f(n) - fb(n) * h * gamma_b / alfa_b;
otherwise
    printf("Erro na Condicao de contorno"); 
end 

% Resolve sistema linear
u = A\f;
      
endfunction       

