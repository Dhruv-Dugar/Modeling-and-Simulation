% flux = 40
% k = 0.1
% T(z=0) = 313
% z(max) = 0.05
% Number of nodes = 10

L = 0.05;
N = 11;
h = L/(N-1);

% domain
x = linspace(0, L, N);

% differential equation

f = @(x) -400;

A = zeros(N, N);
A(1,1) = 50;


for i = 2:N-1
    A(i, i-1) = 1/h^2;
    A(i)