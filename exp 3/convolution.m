% Compute linear and circular convolution of two discrete time signal sequences

% Input signals
x = input('Enter the first signal x[n] as a vector: ');
h = input('Enter the second signal h[n] as a vector: ');

% Linear convolution
y_linear = conv(x, h);

% Circular convolution
N = max(length(x), length(h));
x_padded = [x, zeros(1, N - length(x))];
h_padded = [h, zeros(1, N - length(h))];
y_circular = ifft(fft(x_padded) .* fft(h_padded));

% Display results
disp('Linear Convolution Result:');
disp(y_linear);

disp('Circular Convolution Result:');
disp(y_circular);

% Plotting
subplot(3,1,1);
stem(x, 'r');
title('Signal x[n]');

subplot(3,1,2);
stem(h, 'b');
title('Signal h[n]');

subplot(3,1,3);
stem(y_linear, 'g');
title('Linear Convolution Result');

figure;

subplot(3,1,1);
stem(x, 'r');
title('Signal x[n]');

subplot(3,1,2);
stem(h, 'b');
title('Signal h[n]');

subplot(3,1,3);
stem(y_circular, 'm');
title('Circular Convolution Result');
