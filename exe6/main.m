[probs] = problemas();

function filename = filename(name, tag, n, m)
    filename = [ "dados/" name "_" tag "_" num2str(n) "_" num2str(m) ];
endfunction

function print_system(A,B,N)
    for i = 1:N
        for j = 1:N
            printf("%6.2f ", A(i,j));
        endfor
        printf("  =  %8.4f", B(i));
        printf("\n");
    endfor
endfunction

% TODO transformar em parâmetros de CLI
DIMS = {
    [4,   4],
    % [50,  50],
    % [25,  100],
    % [100, 100],
    % [200, 50],
    % [500, 1000],
    % [1000, 1000],
};

prob = probs{1};

for d = 1 : length(DIMS)
    n = DIMS{d}(1); m = DIMS{d}(2);
    N = n * m

    tic
    [A,B] = monta_pvc(prob, n, m);
    toc
    save("-binary", filename(prob.name, "sys", n, m), "A", "B");

    print_system(A, B, N);

    printf("\n");
endfor
