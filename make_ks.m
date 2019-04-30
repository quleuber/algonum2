function ks = make_ks(n, quant = 5)
    kmax = n / 2;
    ks = linspace(0, floor(kmax/quant)*quant, quant+1);
    ks = ks(2 : length(ks));
    if ks(length(ks)) != n
        ks(length(ks) + 1) = n;
    endif
endfunction