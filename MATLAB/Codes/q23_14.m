% %
% 
% Integrand, specified as a function handle, which defines the function to be integrated from xmin to xmax.
% 
% For scalar-valued problems, the function y = fun(x) must accept a vector argument, x, and return a vector result, y. This generally means that fun must use array operators instead of matrix operators. For example, use .* (times) rather than * (mtimes). If you set the 'ArrayValued' option to true, then fun must accept a scalar and return an array of fixed size.


y = @(x) 1/sqrt(2*pi) * exp(-x.^2/2);


q = integral(y, -1, 1);
disp(['Integral from -1 to 1: ', num2str(q)]);
q1 = integral(y, -2, 2);
disp(['Integral from -2 to 2: ', num2str(q1)]);

%% MADE BY DHRUV DUGAR
%% 2020A1PS1322P
