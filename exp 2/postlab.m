% Let x(n) = 8(0.5)n (u[n+1] - u[n-3]). Sketch the following signals
% I.	Y(n) = [x-3]
% II.	F(n) = x[n+1]
% III.	G(n) = x[-n+4]


u = @(n) 1.*(n>=0);
x = @(n) 8.*((0.5).^n).*(u(n+1) - u(n-3));

n = -10:1:10;

X = x(n);
subplot(3,3,2);
stem(n,X)
title("Original");

Y = x(n-3);
subplot(3,3,4);
stem(n,Y);
title("Y(n) = [x-3]");

F = x(n+1);
subplot(3,3,5);
stem(n,F);
title("F(n) = x[n+1]");

G = x(-n+4);
subplot(3,3,6);
stem(n,G);
title("G(n) = x[-n+4]");