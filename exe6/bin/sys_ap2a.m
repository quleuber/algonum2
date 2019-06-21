




















args = argv();
if length(args) < 2
    printf("executável de montagem do sistema precisa de 2 parâmetrosn");
    exit(1);
endif

n = str2num(args{1});
m = str2num(args{2});

outfd = "dados";
mkdir(outfd);

name = "ap2a"


num = n * m; num

hx = (( 5000 ) - ( 0 )) / (n - 1);
hy = (( 1000 ) - ( 0 )) / (m - 1);


tic;

vA = zeros(num, 1);
vB = zeros(num, 1);
vC = zeros(num, 1);
vD = zeros(num, 1);
vE = zeros(num, 1);
vR = zeros(num, 1);



_2hx  = (2*hx);
_2hy  = (2*hy);
_hx2i = (hx^(-2));
_hy2i = (hy^(-2));





#   e
# b a c
#   d

# 7 8 9
# 4 5 6
# 1 2 3

i = 1;
x = ( 0 );
y = ( 0 );

% 1
    
    vA(i) = 1; 
    vR(i)  = 100;


for j = 2 : n-1
    
    x += hx; 
    i++;

    % 2
            vR(i) = ( 0 );
        vA(i) = (2 * ( 1 ) * (_hx2i + _hy2i) + ( 0 ));
        vE(i) = (-( 1 ) * (_hy2i) + ( 0 ) / (_2hy));
        vC(i) = (-( 1 ) * (_hx2i) + ( 0 ) / (_2hx));
        vB(i) = (-( 1 ) * (_hx2i) - ( 0 ) / (_2hx));
        
    vA(i) += (-( 1 ) * (_hy2i) - ( 0 ) / (_2hy)) * (1 - hy * ( 0) / (-( 1 )) ); 
    vR(i) -= (-( 1 ) * (_hy2i) - ( 0 ) / (_2hy)) * hy * ( 0) / (-( 1 ));

endfor




    x += hx; 
    i++;

% 3
    
    vA(i) = 1; 
    vR(i)  = 100;


for ln = 2 : m-1
    
    x = ( 0 ); 
    y += hy; 
    i++;

    % 4
            
    vA(i) = 1; 
    vR(i)  = 100;
        

    for j = 2 : n-1
        
    x += hx; 
    i++;

        % 5
        vR(i) = ( 0 );
        vA(i) = (2 * ( 1 ) * (_hx2i + _hy2i) + ( 0 ));
        vD(i) = (-( 1 ) * (_hy2i) - ( 0 ) / (_2hy));
        vE(i) = (-( 1 ) * (_hy2i) + ( 0 ) / (_2hy));
        vC(i) = (-( 1 ) * (_hx2i) + ( 0 ) / (_2hx));
        vB(i) = (-( 1 ) * (_hx2i) - ( 0 ) / (_2hx));

        
    endfor

    
    x += hx; 
    i++;

    % 6
            
    vA(i) = 1; 
    vR(i)  = 100;
        

endfor




    x = ( 0 ); 
    y += hy; 
    i++;

% 7
    
    vA(i) = 1; 
    vR(i)  = 100;



for j = 2 : n-1
    
    x += hx; 
    i++;

    % 8
            vR(i) = ( 0 );
        vA(i) = (2 * ( 1 ) * (_hx2i + _hy2i) + ( 0 ));
        vD(i) = (-( 1 ) * (_hy2i) - ( 0 ) / (_2hy));
        vC(i) = (-( 1 ) * (_hx2i) + ( 0 ) / (_2hx));
        vB(i) = (-( 1 ) * (_hx2i) - ( 0 ) / (_2hx));
        
    vA(i) += (-( 1 ) * (_hy2i) + ( 0 ) / (_2hy)) * ( 1 - hy * ( 0) / (-( 1 )) ); 
    vR(i) -= (-( 1 ) * (_hy2i) + ( 0 ) / (_2hy)) * hy * ( 0) / (-( 1 ));

endfor



    x += hx; 
    i++;

% 9
    
    vA(i) = 1; 
    vR(i)  = 100;




    x = 1500; y = 600; 
    i = get_i(( 0 ), ( 5000 ), ( 0 ), ( 1000 ), n, m, x, y) 
    vR(i) = (-250); 
    x = 3200; y = 250; 
    i = get_i(( 0 ), ( 5000 ), ( 0 ), ( 1000 ), n, m, x, y) 
    vR(i) = (-250);

toc;


b_a = ( 0 );
b_b = ( 5000 );
b_c = ( 0 );
b_d = ( 1000 );

filename = [ outfd "/" name "_" num2str(n) "_" num2str(m) "_sys" ];

cofs = [vA, vB, vC, vD, vE];
mA = spdiags(cofs, [0, -1, 1, -n, n] .* -1, num, num)';

save("-binary", filename
    , "b_a", "b_b", "b_c", "b_d"
    , "mA", "vR"
);
