% subtracting 2 signals

x = [1 2 3 4 5 6 7 8 9 10];
subplot(1,3,1);
stem(x);
title("X values")
y = [3 4 -8 1 23 8 9 11 2 0];
subplot(1,3,2);
stem(y);
title("Y values")

z = x - y;
subplot(1,3,3);
stem(z);

title("Subtraction of 2 Samples");