function i = get_i(b_a, b_b, b_c, b_d, n, m, x, y)

    hx = (b_b - b_a) / (n - 1);
    hy = (b_d - b_c) / (m - 1);

    ix = (x - b_a) / hx;
    iy = (y - b_c) / hy;

    i = 1 + n * iy + ix;

endfunction