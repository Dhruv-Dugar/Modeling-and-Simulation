
x = linspace(1, 10, 10);

y1 = x.^3 + 3*x + 5;
y2 = 5*x + 1;

figure(1);
plot(x, y1, "b-", "LineWidth",2);
hold("on");
plot(x, y2, "b-", "LineWidth",2);



% for 1:10
% 
% function f = y1(x)
%     f = x^3 + 3*x + 5;
% end
% 
% 
% function f = y2(x)
%     f = 5*x + 1;
% end