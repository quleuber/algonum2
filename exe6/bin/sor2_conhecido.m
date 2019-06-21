
















args = argv();
if length(args) < 2
    printf("executável de montagem do sistema precisa de 2 parâmetrosn");
    exit(1);
endif

n = str2num(args{1});
m = str2num(args{2});

outfd = "saida";
mkdir(outfd);

name = "conhecido"
num = n * m; num

hx = (( 1 ) - ( 0 )) / (n - 1);
hy = (( 1 ) - ( 0 )) / (m - 1);

_2hx  = (2*hx);
_2hy  = (2*hy);
_hx2i = (hx^(-2));
_hy2i = (hy^(-2));



tic;

vA = zeros(num, 1);
vB = zeros(num, 1);
vC = zeros(num, 1);
vD = zeros(num, 1);
vE = zeros(num, 1);
vR = zeros(num, 1);

% ================ CÁLCULO DOS COEFICIENTES ================ %






i = 1;
x = ( 0 );
y = ( 0 );

% 1
    
    
    vA(i) = 1; 
    vR(i)  = 0;



for j = 2 : n-1
    
    x += hx; 
    i++;

    % 2
            
        
    vA(i) = 1; 
    vR(i)  = 0;
        


endfor



    x += hx; 
    i++;

% 3
    
    
    vA(i) = 1; 
    vR(i)  = 0;





for ln = 2 : m-1
    
    x = ( 0 ); 
    y += hy; 
    i++;

    % 4
            
        
    vA(i) = 1; 
    vR(i)  = 0;
        


    for j = 2 : n-1
        
    x += hx; 
    i++;

        % 5
        vR(i) = ( -(202.5*x - 202.5)*x^8.0*(y - 1)*y*e^(x^4.5) + (45.0*x - 45.0)*x^4.5*(y - 1)*y*e^(x^4.5) - (247.5*x - 247.5)*x^3.5*(y - 1)*y*e^(x^4.5) - 90.0*x^4.5*(y - 1)*y*e^(x^4.5) + 10*(x - 1)*x*(y - 1)*y*e^(x^4.5) + 10*(x - 1)*(y - 1)*y*e^(x^4.5) + 10*x*(y - 1)*y*e^(x^4.5) - 20*(x - 1)*x*e^(x^4.5) - 20*(y - 1)*y*e^(x^4.5) + 200*((x - 1)*x*(y - 1)*e^(x^4.5) + (x - 1)*x*y*e^(x^4.5))*y );
        vA(i) = (2 * ( 1 ) * (_hx2i + _hy2i) + ( 1 ));
        vD(i) = (-( 1 ) * (_hy2i) - ( 20 * y ) / (_2hy));
        vE(i) = (-( 1 ) * (_hy2i) + ( 20 * y ) / (_2hy));
        vC(i) = (-( 1 ) * (_hx2i) + ( 1 ) / (_2hx));
        vB(i) = (-( 1 ) * (_hx2i) - ( 1 ) / (_2hx));

        

    endfor


    
    x += hx; 
    i++;

    % 6
            
        
    vA(i) = 1; 
    vR(i)  = 0;
        


endfor




    x = ( 0 ); 
    y += hy; 
    i++;

% 7
    
    
    vA(i) = 1; 
    vR(i)  = 0;




for j = 2 : n-1
    
    x += hx; 
    i++;

    % 8
            
        
    vA(i) = 1; 
    vR(i)  = 0;
        


endfor



    x += hx; 
    i++;

% 9
    
    
    vA(i) = 1; 
    vR(i)  = 0;







% ================ EXECUÇÃO DO SOR ================ %



u = zeros(num, 1);
% oldu = zeros(num, 1);

for iter = 1 : min(num, num)


oldu = u;

i = 1;
x = ( 0 );
y = ( 0 );

% 1
u(i) = (1 - (1)) * u(i)  +  (1) / vA(i) * ( vR(i) ...

    - (u(i+1) * vC(i)) ...
    - (u(i+n) * vE(i)) ...
);

for j = 2 : n-1
    
    x += hx; 
    i++;

    % 2
    u(i) = (1 - (1)) * u(i)  +  (1) / vA(i) * ( vR(i) ...

        - (u(i-1) * vB(i)) ...
        - (u(i+1) * vC(i)) ...
        - (u(i+n) * vE(i)) ...
    );

endfor



    x += hx; 
    i++;

% 3
u(i) = (1 - (1)) * u(i)  +  (1) / vA(i) * ( vR(i) ...

    - (u(i-1) * vB(i)) ...
    - (u(i+n) * vE(i)) ...
);



for ln = 2 : m-1
    
    x = ( 0 ); 
    y += hy; 
    i++;

    % 4
    u(i) = (1 - (1)) * u(i)  +  (1) / vA(i) * ( vR(i) ...

        - (u(i-n) * vD(i)) ...
        - (u(i+1) * vC(i)) ...
        - (u(i+n) * vE(i)) ...
    );

    for j = 2 : n-1
        
    x += hx; 
    i++;

        % 5
        u(i) = (1 - (1)) * u(i)  +  (1) / vA(i) * ( vR(i) ...

            - (u(i-1) * vB(i)) ...
            - (u(i-n) * vD(i)) ...
            - (u(i+1) * vC(i)) ...
            - (u(i+n) * vE(i)) ...
        );
    endfor


    
    x += hx; 
    i++;

    % 6
    u(i) = (1 - (1)) * u(i)  +  (1) / vA(i) * ( vR(i) ...

        - (u(i-1) * vB(i)) ...
        - (u(i-n) * vD(i)) ...
        - (u(i+n) * vE(i)) ...
    );

endfor




    x = ( 0 ); 
    y += hy; 
    i++;

% 7
u(i) = (1 - (1)) * u(i)  +  (1) / vA(i) * ( vR(i) ...

    - (u(i-n) * vD(i)) ...
    - (u(i+1) * vC(i)) ...
);


for j = 2 : n-1
    
    x += hx; 
    i++;

    % 8
    u(i) = (1 - (1)) * u(i)  +  (1) / vA(i) * ( vR(i) ...

        - (u(i-n) * vD(i)) ...
        - (u(i+1) * vC(i)) ...
        - (u(i-1) * vB(i)) ...
    );
endfor



    x += hx; 
    i++;

% 9
u(i) = (1 - (1)) * u(i)  +  (1) / vA(i) * ( vR(i) ...

    - (u(i-1) * vB(i)) ...
    - (u(i-n) * vD(i)) ...
);


sc = max(norm(oldu, inf), 1);
err = norm(u - oldu, inf);
errrel = err / sc;
if ( norm(u - oldu, inf) / sc <= 1e-6 )
    break;
endif


endfor


% ===== FIM ===== %

iter
errrel

t = toc; t

b_a = ( 0 );
b_b = ( 1 );
b_c = ( 0 );
b_d = ( 1 );

outname = [ outfd "/" name "_" num2str(n) "_" num2str(m) "_sor2" ];

save("-binary", outname
    , "name", "n", "m"
    , "b_a", "b_b", "b_c", "b_d"
    , "u", "iter"
);

txtfile = [outname ".txt"];
fh = fopen(txtfile, "w");
fprintf(fh, "t = %f\n", t);
fclose(fh);

fprintf("\n\n");
