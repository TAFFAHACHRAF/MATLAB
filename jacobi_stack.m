jacobi_stack : function [x , iteration , erj] = jacobi_stack(A, b, eps, maxIter, x)

[n, ma] = size(A);
iteration = 0;
erj = rand(n,1);
zeros(n,1);
for iter=1:maxIter
    norm = 0;
    for i=1:n
        x2(i) = b(i);
        for j=1:n
            x2(i) = x2(i) - A(i,j)*x(j); 
        end
        x2(i) = x2(i)/A(i,i);
        x(i) = x(i) + x2(i);
        if (x2(i) >= 0)
            norm = norm + x2(i);
        else 
            norm = norm - x2(i);
        end
         erj(i) = norm;
    end
    iteration = iteration+1;
    if(norm <= eps)
        break
    end
end