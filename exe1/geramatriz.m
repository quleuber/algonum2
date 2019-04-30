function [A]=geramatriz(infilename)
     M = load (infilename);
     n = M(1,1);
     nnz = M(1,3);
     iz = 2;
     for i=1:nnz
         A(M(iz,1),M(iz,2)) = M(iz,3);
         iz = iz + 1;
     endfor
endfunction;
            
     

           
