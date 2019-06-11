[probs] = problemas();

function filename = filename(name, tag, n, m)
    filename = [ "dados/" name "_" tag "_" num2str(n) "_" num2str(m) ];
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
    [A,B] = monta_pvc_cond(prob, n, m);
    toc
    save("-binary", filename(prob.name, "sys", n, m), "A", "B");

    print_system(A, B, N);

    printf("\n");
endfor
