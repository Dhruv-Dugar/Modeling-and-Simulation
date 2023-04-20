% % 5.2 Determine the real root of f(x)  5x3 - 5x2 + 6x - 2:
% % (a) Graphically.
% % (b) Using bisection to locate the root. Employ initial guesses of
% % xl 5 0 and xu 5 1 and iterate until the estimated error ea falls
% % below a level of es 5 10%.


% a -> using the plot function to plot the graph of the function to find
% the roots of the same

% TO FIND THE ROOTS OF A POLYNOMIAL, FIRST WE HAVE THE ROOTS FUNCTION
% WE FIRST DEFINE A ROW VECTOR WITH ALL THE COEFFCIENTS

p = [5 -5 6 -2];

r = roots(p);

% to plot the function, and get the roots graphically, we use the function
% fplot()
% by default this does in the range of -5 to 5


fplot(@(x) 5*x^3-5*x^2+6*x-2, "o");
grid("on")

% using bisection method

F = @(x) 5*x^3-5*x^2+6*x-2;



[root, fx, ea, iter] = bisection_method(F, 0, 1, 0.1);


% Display the results
disp(['Root: ', num2str(root)]);
disp(['Function value at root: ', num2str(fx)]);
disp(['Approximate relative error: ', num2str(ea), '%']);
disp(['Number of iterations: ', num2str(iter)]);


function [root, fx, ea, iter] = bisection_method(F, A, B, es)
if nargin < 4 || isempty(es)
    es = 0.01;
end
iter = 0;
xr = A;
ea = 100;
fa = F(A);
fb = F(B);
if sign(fa) == sign(fb)
    error('No root exists within the given limits');
end
while ea > es
    xr_prev = xr;
    xr = (A + B) / 2;
    fx = F(xr);
    if xr ~= 0
        ea = abs((xr - xr_prev) / xr) * 100;
    end
    if sign(fx) == sign(fa)
        A = xr;
        fa = fx;
    else
        B = xr;
        fb = fx;
    end
    iter = iter + 1;
    if iter > 100
        error('Maximum iterations reached');
    end
end

root = xr;
fx = F(xr);
ea = ea;
end




