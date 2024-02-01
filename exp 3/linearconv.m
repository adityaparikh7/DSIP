%linear convolution of 2 discrete signals

x = input('Enter first signal x[n] as a vector: ');
t_x = input('Enter the time vector for the first signal: ');

h = input('Enter second signal h[n] as a vector: ');
t_h = input('Enter the time vector for the second signal: ');

%linear convolution
M = length(x);
N = length(h);
y_linear = zeros(1, M + N - 1);

for n = 1:M + N - 1
    for k = max(1, n-M+1):min(n,N)
        y_linear(n) = y_linear(n) + x(n-k+1)*h(k);
    end

end

% Plotting
figure(n);

subplot(3,1,1);
stem(t_x, x, 'r');
title('Signal x[n]');

subplot(3,1,2);
stem(t_h, h, 'b');
title('Signal h[n]');

subplot(3,1,3);
stem(y_linear, 'g');
title(['Linear Convolution Result at n = ', num2str(n)]);

% Display results
disp('Linear Convolution Result:');
disp(y_linear);


% example
% [1,2,0.5,1]
% [1,2,1,-1]