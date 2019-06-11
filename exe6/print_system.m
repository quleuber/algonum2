function print_system(A, B, N)
    for i = 1:N
        for j = 1:N
            printf("%6.2f ", A(i,j));
        endfor
        printf("  =  %8.4f", B(i));
        printf("\n");
    endfor
endfunction
