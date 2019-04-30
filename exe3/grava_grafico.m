
function grava_grafico(nomeArq, tipo = 'epsc2', res = 0)
    % tipo = 'epsc2'; % tipo = 'pngcairo'; % pngcairo resolve bug do fundo preto
    printf("Gerando grafico tipo '%s' em '%s'...\n", tipo, nomeArq);
    print(nomeArq, ['-d' tipo], ['-r' num2str(res)]); % 
end

