


















args = argv();
if length(args) < 2
    printf("executável de montagem do sistema precisa de 2 parâmetrosn");
    exit(1);
endif

n = str2num(args{1});
m = str2num(args{2});

outfd = "saida";
mkdir(outfd);

name = "ap2a"


num = n * m; num

hx = (( 5000 ) - ( 0 )) / (n - 1);
hy = (( 1000 ) - ( 0 )) / (m - 1);


tic;

u = zeros(num, 1);
oldu = zeros(num, 1);

_2hx  = (2*hx);
_2hy  = (2*hy);
_hx2i = (hx^(-2));
_hy2i = (hy^(-2));


# 





#   e
# b a c
#   d

# 7 8 9
# 4 5 6
# 1 2 3


for iter = 1 : min(num, (num))

oldu = u;

i = 1;
x = ( 0 );
y = ( 0 );

% 1
    c_d = 0; c_b = 0; c_a = 0; c_c = 0; c_e = 0; c_r = 0;
    
    c_a = 1; 
    c_r  = 100;

u(i) = (1 - (1.5)) * u(i)  +  (1.5) / c_a * ( c_r ...

    - (u(i+1) * c_c) ...
    - (u(i+n) * c_e) ...
);

for j = 2 : n-1
    
    x += hx; 
    i++;

    % 2
            c_r = ( 0 );
        c_a = (2 * ( 1 ) * (_hx2i + _hy2i) + ( 0 ));
        c_e = (-( 1 ) * (_hy2i) + ( 0 ) / (_2hy));
        c_c = (-( 1 ) * (_hx2i) + ( 0 ) / (_2hx));
        c_b = (-( 1 ) * (_hx2i) - ( 0 ) / (_2hx));
        
    c_a += (-( 1 ) * (_hy2i) - ( 0 ) / (_2hy)) * (1 - hy * ( 0) / (-( 1 )) ); 
    c_r -= (-( 1 ) * (_hy2i) - ( 0 ) / (_2hy)) * hy * ( 0) / (-( 1 ));
    u(i) = (1 - (1.5)) * u(i)  +  (1.5) / c_a * ( c_r ...

        - (u(i-1) * c_b) ...
        - (u(i+1) * c_c) ...
        - (u(i+n) * c_e) ...
    );

endfor



    x += hx; 
    i++;

% 3
    c_d = 0; c_b = 0; c_a = 0; c_c = 0; c_e = 0; c_r = 0;
    
    c_a = 1; 
    c_r  = 100;

u(i) = (1 - (1.5)) * u(i)  +  (1.5) / c_a * ( c_r ...

    - (u(i-1) * c_b) ...
    - (u(i+n) * c_e) ...
);



for ln = 2 : m-1
    
    x = ( 0 ); 
    y += hy; 
    i++;

    % 4
            c_d = 0; c_b = 0; c_a = 0; c_c = 0; c_e = 0; c_r = 0;
        
    c_a = 1; 
    c_r  = 100;
        
    u(i) = (1 - (1.5)) * u(i)  +  (1.5) / c_a * ( c_r ...

        - (u(i-n) * c_d) ...
        - (u(i+1) * c_c) ...
        - (u(i+n) * c_e) ...
    );

    for j = 2 : n-1
        
    x += hx; 
    i++;

        % 5
        c_r = ( 0 );
        c_a = (2 * ( 1 ) * (_hx2i + _hy2i) + ( 0 ));
        c_d = (-( 1 ) * (_hy2i) - ( 0 ) / (_2hy));
        c_e = (-( 1 ) * (_hy2i) + ( 0 ) / (_2hy));
        c_c = (-( 1 ) * (_hx2i) + ( 0 ) / (_2hx));
        c_b = (-( 1 ) * (_hx2i) - ( 0 ) / (_2hx));

        
    if x == 1500 && y == 600 || x == 3200 && y == 250 
        c_r = (-250); 
    endif

        u(i) = (1 - (1.5)) * u(i)  +  (1.5) / c_a * ( c_r ...

            - (u(i-1) * c_b) ...
            - (u(i-n) * c_d) ...
            - (u(i+1) * c_c) ...
            - (u(i+n) * c_e) ...
        );
    endfor


    
    x += hx; 
    i++;

    % 6
            c_d = 0; c_b = 0; c_a = 0; c_c = 0; c_e = 0; c_r = 0;
        
    c_a = 1; 
    c_r  = 100;
        
    u(i) = (1 - (1.5)) * u(i)  +  (1.5) / c_a * ( c_r ...

        - (u(i-1) * c_b) ...
        - (u(i-n) * c_d) ...
        - (u(i+n) * c_e) ...
    );

endfor




    x = ( 0 ); 
    y += hy; 
    i++;

% 7
    c_d = 0; c_b = 0; c_a = 0; c_c = 0; c_e = 0; c_r = 0;
    
    c_a = 1; 
    c_r  = 100;

u(i) = (1 - (1.5)) * u(i)  +  (1.5) / c_a * ( c_r ...

    - (u(i-n) * c_d) ...
    - (u(i+1) * c_c) ...
);


for j = 2 : n-1
    
    x += hx; 
    i++;

    % 8
            c_r = ( 0 );
        c_a = (2 * ( 1 ) * (_hx2i + _hy2i) + ( 0 ));
        c_d = (-( 1 ) * (_hy2i) - ( 0 ) / (_2hy));
        c_c = (-( 1 ) * (_hx2i) + ( 0 ) / (_2hx));
        c_b = (-( 1 ) * (_hx2i) - ( 0 ) / (_2hx));
        
    c_a += (-( 1 ) * (_hy2i) + ( 0 ) / (_2hy)) * ( 1 - hy * ( 0) / (-( 1 )) ); 
    c_r -= (-( 1 ) * (_hy2i) + ( 0 ) / (_2hy)) * hy * ( 0) / (-( 1 ));
    u(i) = (1 - (1.5)) * u(i)  +  (1.5) / c_a * ( c_r ...

        - (u(i-n) * c_d) ...
        - (u(i+1) * c_c) ...
        - (u(i-1) * c_b) ...
    );

endfor



    x += hx; 
    i++;

% 9
    c_d = 0; c_b = 0; c_a = 0; c_c = 0; c_e = 0; c_r = 0;
    
    c_a = 1; 
    c_r  = 100;

u(i) = (1 - (1.5)) * u(i)  +  (1.5) / c_a * ( c_r ...

    - (u(i-1) * c_b) ...
    - (u(i-n) * c_d) ...
);


sc = max(norm(oldu, inf), 1);
if ( norm(u - oldu, inf) / sc <= (1e-6) )
    break;
endif

endfor

iter
t = toc; t

b_a = ( 0 );
b_b = ( 5000 );
b_c = ( 0 );
b_d = ( 1000 );

outname = [ outfd "/" name "_" num2str(n) "_" num2str(m) "_sor" ];

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
