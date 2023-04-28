% flux = 40
% k = 0.1
% T(z=0) = 313
% z(max) = 0.05
% Number of nodes = 10

% now solving using 4th order RK method

clc;
clear all;

f = @(z,t) -400;
a = 0;
b = 0.05;
n = 6;

alpha = 40;

h = (b-a)/n;
distance = a;
temp = alpha;

fprintf('Distance Temperature\n');
fprintf('%5.3f  %11.7f\n', distance, temp);

 for i = 1:n
   k1 = h*f(distance,temp);
   k2 = h*f(distance+h/2.0, temp+k1/2.0);
   k3 = h*f(distance+h/2.0, temp+k2/2.0);
   k4 = h*f(distance+h,temp+k3);
   temp = temp+(k1+2.0*(k2+k3)+k4)/6.0;
   distance = a+i*h;
   fprintf('%5.3f %11.7f\n', distance, temp);
   plot(distance,temp,'b*'); grid on;
   xlabel('t values'); ylabel('w values');
   hold on;
 end

hold off;

% verifying solution with ode45
% 
% L = 0.05;
% N = 6;
% zspan = linspace(0 , L, N);
% 
% t0 = 40;
% 
% [t,z] = ode45(@(t,z) -400, zspan, t0);
% plot(t,z,"-o");

