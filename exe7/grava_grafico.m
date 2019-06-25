
function grava_grafico(nomeArq, tipo = 'epsc2', res = [])
    % tipo = 'epsc2'; % tipo = 'pngcairo'; % pngcairo resolve bug do fundo preto
    printf("Gerando grafico tipo '%s' em '%s'...\n", tipo, nomeArq);
    resOpt = {};
    if res > 0
        resOpt = {['-r' num2str(res)]};
    endif
    print(nomeArq, ['-d' tipo], resOpt{:});
end

