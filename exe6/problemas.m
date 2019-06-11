function [lista, mapa] = problemas()
    lista = cell();
    mapa = struct();

    simples.name = "simples";

    simples.kappa  = 1;
    simples.beta_x = @(x,y) 0;
    simples.beta_y = @(x,y) 0;
    simples.gamma  = @(x,y) 0;
    simples.f      = @(x,y) 5;

    cond = cond_prescrito(-1);
    simples.cond.up   = cond;
    simples.cond.down = cond;
    simples.cond.right= cond;
    simples.cond.left = cond;

    simples.a = 0;
    simples.b = 1;
    simples.c = 0;
    simples.d = 1;

    lista(end+1) = mapa.simples = simples;


    solcon.kappa  = 1;
    solcon.beta_x = @(x,y) 0;
    solcon.beta_y = @(x,y) 1;
    solcon.gamma  = @(x,y) 0;
    solcon.f      = @(x,y) 0;

    solcon.a = 0;
    solcon.b = 1;
    solcon.c = 0;
    solcon.d = 1;

    lista(end+1) = mapa.solcon = solcon;

endfunction

function cond = cond_prescrito(val)
    cond.tipo = 0;
    cond.val  = val;
endfunction

function cond = cond_fluxo(sigma)
    cond.tipo  = 1;
    cond.sigma = sigma;
endfunction

function cond = cond_misto(alpha, beta, gamma)
    cond.tipo  = 2;
    cond.alpha = alpha;
    cond.beta  = beta;
    cond.gamma = gamma;
endfunction
