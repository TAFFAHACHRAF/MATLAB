clear
A = [5 -2 3 0 6; -3 9 1 -2 7.4; 2 -1 -7 1 6.7; 4 3 -5 7 9; 2 3.5 6.1 -4 -8.1];
b = [-1 2 3 0.5 3.1]';
n = length(b);
MaxIter = 1000;
eps = 1e-13;

[x,iter,eps] = Gauss(A,b,n,eps,MaxIter);

plot(x,eps);