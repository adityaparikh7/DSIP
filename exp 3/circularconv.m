%circular convolution of 2 discrete signals

x = input('Enter first signal x[n] as a vector: ');
h = input('Enter second signal h[n] as a vector: ');

% Circular convolution
N = max(length(x), length(h));
x_padded = [x, zeros(1, N - length(x))];
h_padded = [h, zeros(1, N - length(h))];
y_circular = ifft(fft(x_padded) .* fft(h_padded));


disp('Circular Convolution Result:');
disp(y_circular);

subplot(3,1,1);
stem(x, 'r');
title('Signal x[n]');

subplot(3,1,2);
stem(h, 'b');
title('Signal h[n]');

subplot(3,1,3);
stem(y_circular, 'm');
title('Circular Convolution Result');

% example
% x = [2, 1, 2, -1];
% h = [1, 2, 3, 4];