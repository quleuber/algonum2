
[probs] = problemas();

prob = probs{1};
n = 400;
m = 400;

N = n * m;

[A,B] = monta_pvc(prob, n, m);


% for i = 1:N
%     for j = 1:N
%         printf("%6.2f ", A(i,j));
%     endfor
%     printf("  =  %8.4f", B(i));
%     printf("\n");
% endfor
