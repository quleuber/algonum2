#!/usr/bin/octave
0;

function ue = calc_exata(b_a, b_b, b_c, b_d, n, m, fu)
    hx = (b_b - b_a) / (n - 1);
    hy = (b_d - b_c) / (m - 1);
    num = n * m;
    ue = zeros(num, 1);
    
    i = 1;
    y = b_c;
    for iy = 1 : m
        x = b_a;
        for ix = 1 : n
            ue(i) = fu(x, y);
            i++;
            x += hx;
        endfor
        y += hy;
    endfor
endfunction

fu = @(x,y) 10 * x * y * (1 - x) * (1 - y) * (e ** (x**4.5));

dims = {
    "50_50"
    "25_100"
    "100_100"
    "200_50"
    "200_200"
    "250_250"
    "500_1000"
    "1000_1000"
};

metds = {
    "gmres"
    "sor"
};

for i_m = 1 : size(metds)(1)
    met = metds{i_m};
    printf("método: %s\n", met);

    for i_d = 1 : size(dims)(1)
        dim = dims{i_d};

        name = [ "conhecido_" dim ];
        fullname = [ name "_" met ];
        filepath = [ "saida/" fullname ];

        [_, err] = stat(filepath);
        if err
            continue;
        endif
        load(filepath);

        ue = calc_exata(b_a, b_b, b_c, b_d, n, m, fu);
        err = norm(u - ue, inf);
        printf("%10s %14g\n", dim, err);

    endfor
    printf("\n");
endfor
