%ode1 = diff(x) == 1 - 2*x + 0.02*x^2*y - 0.04*x;
%ode2 = diff(y) == 2*x - 0.02 * x^2 * y;

f = @(t,x) [1 - 2.04*x(1) + 0.02*x(1)^2*x(2); 2*x(1) - 0.02*x(1)^2*x(2)]

tspan = [0 500];
x0 = [0 0];
ode45(f, tspan, x0)