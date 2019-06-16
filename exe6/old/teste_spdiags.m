n = 4;
m = 4;
num = n * m;

is = 1 : num;
is';

a = b = c = d = e = is;

% mc = [a b c d e]
mc = reshape(1:5*num, num, 5)

m = spdiags(mc, [0, -1, 1, -n, n] .* -1, num, num)';

for i = 1 : num
    for j = 1 : num
        c = m(i,j);
        printf("%5.1f ", c);
    endfor
    printf("\n");
endfor
