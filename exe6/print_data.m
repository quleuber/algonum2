#!/usr/bin/octave
args = argv();
if length(args) < 1
    printf("print_data precisa de 1 parâmetro\n");
    exit(1);
endif
filename = args{1};
load(filename);
vars = args(2:end);
for i = 1 : length(vars)
    v = vars{i};
    eval(v, "");
endfor
