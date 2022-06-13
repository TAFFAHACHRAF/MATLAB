function [x , iteration , erj] = gausssedel_stack(A, b, eps, maxIter, x)
[n, ma] = size(A);
iteration = 0;
erj = rand(n,1);
for iter=1:maxIter
    norm = 0;
    xold=x;
    for i=1:n
        sigma=0;
        for j=1:i-1
                sigma=sigma+A(i,j)*x(j);
        end
        
        for j=i+1:n
                sigma=sigma+A(i,j)*xold(j);
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
        if (x(i) >= xold(i))
            norm = norm + x(i);
        else 
            norm = norm - x(i);
        end
        
         erj(i) =norm;
    end
 
    
    iteration=iteration+1;

    if (norm <= eps) 
          break
    end

end