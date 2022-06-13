function [x,iter,erg] = GaussSeidel(A,b,n,eps,MaxIter)
x(1:n)=0;
    for iter=1:MaxIter
       xold=x;
       for i=1:n
           s=0;
            for j=1:n
                if(i~=j)
                    s=s-A(i,j)*x(j);
                end
            end
            x(i)=(b(i)+s)/A(i,i);
        end
        norm=sqrt((xold-x)*(xold-x)');
        erg(iter)=norm;
        if(norm<=eps)
            return;
        end
    end
end