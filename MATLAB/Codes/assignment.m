% now solving using 4th order RK method

clc;
clear all;

f = @(z,t) -400;
a = 0;
b = 0.05;
n = 5;

initialtemp = 40;

h = (b-a)/n;
currentXCordinate = a;
currenttemp = initialtemp;

fprintf('Distance Temperature\n');
fprintf('%5.3f  %11.7f\n', currentXCordinate, currenttemp);

 for i = 1:n
   k1 = h*f(currentXCordinate,currenttemp);
   k2 = h*f(currentXCordinate+h/2.0, currenttemp+k1/2.0);
   k3 = h*f(currentXCordinate+h/2.0, currenttemp+k2/2.0);
   k4 = h*f(currentXCordinate+h,currenttemp+k3);
   currenttemp = currenttemp+(k1+2.0*(k2+k3)+k4)/6.0;
   currentXCordinate = a+i*h;
   fprintf('%5.3f %11.7f\n', currentXCordinate, currenttemp);
   plot(currentXCordinate,currenttemp,'b*'); grid on;
   xlabel('t values'); ylabel('w values');
   hold on;
 end

hold off;