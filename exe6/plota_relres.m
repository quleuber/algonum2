#!/usr/bin/octave

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

probs = {
    "conhecido"
    "ap1"
};

for i_p = 1 : size(probs)(1)
    prob = probs{i_p};
    % printf("prob: %s\n", met);

    for i_d = 1 : size(dims)(1)
        dim = dims{i_d};

        name = [ prob "_" dim ];
        fullname = [ name "_" "gmres" ]
        filepath = [ "saida/" fullname ];
        outpath = [ "plot/relres/" fullname ];

        [_, err] = stat(filepath);
        if err
            continue;
        endif
        load(filepath);

        % resvec
        % break;

        semilogy(resvec);
        tit = [prob " " strrep(dim, "_", "x")];
        tit = [tit " GMRES com ILU(0) - Resíduo Relativo x Iteração"];
        title(tit);
        % axis([0 500]);

        grava_grafico(outpath, "png");

    endfor
    printf("\n");
endfor
