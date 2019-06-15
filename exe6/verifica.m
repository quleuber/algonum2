% fu = @(x,y) 10 * x * y * (1 - x) * (1 - y) * e**(x**4.5);

n = 100;
m = 100;
num = n * m;

probname = "conhecido";
name = [ probname "_" num2str(n) "_" num2str(m) ];
filename = [ "saida/" name "_gmres" ];

load(filename);

hx = (b_b - b_a) / (n - 1);
hy = (b_d - b_c) / (m - 1);

k = 0;
exu = zeros(num, 1);
for j = 1 : m
    for i = 1 : n
        k++;
        x = b_a + (i - 1) * hx;
        y = b_c + (j - 1) * hy;
        exu(k) = 10 * x * y * (1 - x) * (1 - y) * e**(x**4.5);
    endfor
endfor

err = norm(u - exu)
