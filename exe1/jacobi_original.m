function [x,iter]=jacobi(A,b,tol,nmaxiter)
		 tic;
     [n,n]=size(A);
     iter = 1;
     er = 1.0;  
     x0 = zeros(n,1);
     x = x0;
     while ((er > tol )&&(iter < nmaxiter))

            for i=1:n
                soma = 0.0;
                for j = 1:(i-1)
                   soma = soma + A(i,j)*x0(j);
                endfor
                for j = (i+1):n
		                soma = soma + A(i,j)*x0(j);
                endfor
	              x(i) = (b(i) - soma)/A(i,i);
            endfor
            iter = iter + 1;
	          er = norm(x-x0,inf)/norm(x,inf);            
            x0 = x;	    
     endwhile;
     normx = norm(x,inf);
     printf("Jacobi - Convergencia obtida apos %d iteracoes\n",iter);
     printf("Norma do erro relativo =%f\n",er);
		 toc;
endfunction;
            
     

           
