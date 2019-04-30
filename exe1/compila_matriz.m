function compila_matriz(file)
  M = load (file);
  file   = file(length("matrizes/")+1:end-length(".mtx"));   % Tira a extens�o
  myfile = fopen(strcat(file,".m"),"w"); % Open the file 

  n = M(1,1);
  nnz = M(1,3);
  iz = 2;
  
  fprintf(myfile,"tic;\n");
  fprintf(myfile,"n = %d; A = eye(n);\n",n); % Inicializa a matriz
  for c = 1:nnz
    fprintf(myfile,"A(%d,%d) = %g;\n",M(iz,1),M(iz,2),M(iz,3)) % Write a number
    iz = iz + 1;
  endfor
  fprintf(myfile,"toc;\n");
  
  fclose(myfile) % Close the file (very important)
endfunction