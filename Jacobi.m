function [x,iter,erj] = Jacobi(A,b,n,eps,maxITER)
x(1:n)=0;
for iter=1:maxITER
        for i=1:n
             s=0;
             for j=1:n
                  if i ~= j
                       s = s-A(i,j)*(j);
                  end
             end
             x2(i) = (b(i)+s)/A(i,i);
        end
        norm = sqrt((x2-x)*(x2-x)');
        if norm <= eps
            x=x2;
            return;
        else
           x=x2;
        end
end
