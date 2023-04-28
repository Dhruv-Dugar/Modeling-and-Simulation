t=[0 25 50 75 100 125]; % Vector time
y=[0 2 4 8 12 13]; % Your signal
% The derivative can be approximated :

disp("Velocity at all times", diff(y)./diff(t));

