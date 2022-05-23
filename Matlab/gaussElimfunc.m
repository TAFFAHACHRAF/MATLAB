function [x] = gaussElim(A,b)

N = mx(size(A));
% Elimination de Gauss
for j=2:N,
        for i=j:N;
             m = A(i,j-1)/A(j-1,j-1);
             A(i,:) = A(i,:) - A(j-1,:) *m;
             b(i) = b(i) - m*b(j-1);
        end
end
% algorithme de remontee
x = zeros(N,1);
x(N) = b(N)/A(N,N);
for j=N-1:-1:1,
    x(j) = (b(j)-A(j,j+1:N)*x(j+1:N))/A(j,j);
end