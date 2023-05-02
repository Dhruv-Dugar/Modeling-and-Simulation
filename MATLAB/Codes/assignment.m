% flux = 40
% k = 0.1
% T(z=0) = 313
% z(max) = 0.05
% Number of nodes = 10
L = 0.05;
N = 6;
zspan = linspace(0 , L, N);

t0 = 40;

[t,z] = ode45(@(t,z) -400, zspan, t0);
plot(t,z,"-o");