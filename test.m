A = [5 -2 3 0 6; -3 9 1 -2 7.4; 2 -1 -7 1 6.7; 4 3 -5 7 9; 2 3.5 6.1 -4 -8.1];
b = [-1 2 3 0.5 3.1]';
n = length(b);
maxit = 1000;
x0 = rand(n,1);
eps = 1e-13;

[x , iteration , erj] = gausssedel_stack(A , b, eps , maxit , x0);
plot(x , erj);