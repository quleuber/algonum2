graphics_toolkit gnuplot;

dxs = [1 0.1 0.01];

Kappa = 0.835;
fexplicito = @b_explicito;
fimplicito = @b_implicito;
% fcranknicolson = @cranknicolson;

N = 100;
PASSOS = 100;

# explicito
for dx = dxs
    dtbase = (dx*dx/(2*Kappa));
    dt1 = dtbase * 0.90;
    dt2 = dtbase * 1.10;
    dts = [dt1 dt2];
    for i = 1 : length(dts)
        dt = dts(i)
        suffix = ["_" num2str(dx) "_" num2str(i)];
        suffix = strrep(suffix, ".", "-");
        fexplicito(N, dt, PASSOS, suffix);
    end
end

for dx = dxs
    dtbase = (dx*dx/(2*Kappa));
    dt1 = dtbase * 0.90;
    dt2 = dtbase * 1.10;
    dts = [dt1 dt2];
    for i = 1 : length(dts)
        dt = dts(i)
        suffix = ["_" num2str(dx) "_" num2str(i)];
        suffix = strrep(suffix, ".", "-");
        fimplicito(N, dt, PASSOS, suffix);
    end
end

% for dx = dxs
%     dtbase = (dx*dx/(2*Kappa));
%     dt1 = dtbase * 0.90;
%     dt2 = dtbase * 1.10;
%     dts = [dt1 dt2];
%     for i = 1 : length(dts)
%         dt = dts(i)
%         suffix = ["_" num2str(dx) "_" num2str(i)];
%         suffix = strrep(suffix, ".", "-");
%         fcranknicolson(N, dt, PASSOS, suffix);
%     end
% end
