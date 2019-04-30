function [x,iter,errs]=sor(A,b,tol,nmaxiter,w)
	   tic;
     [n,n]=size(A);
     iter = 1;
     er = 1.0;
     errs = [];
     x0 = zeros(n,1);
     x = x0;
     while (er > tol )&&(iter < nmaxiter)

            for i=1:n
                soma = 0.0;
                for j = 1:(i-1)
                   soma = soma + A(i,j)*x(j);
                endfor
                for j = (i+1):n
		                soma = soma + A(i,j)*x0(j);
                endfor
	              x(i) = w*(b(i) - soma)/A(i,i) + (1-w)*x0(i);
            endfor
	         er = norm(x-x0,inf)/norm(x,inf);
            errs(iter) = er;
            iter = iter + 1;
            x0 = x;	    
     endwhile;
     normx = norm(x,inf);
     printf("SOR - Convergencia obtida apos %d iteracoes\n",iter);
     printf("Norma do erro relativo =%f\n",er);
	   toc;
endfunction;
            
     

           
