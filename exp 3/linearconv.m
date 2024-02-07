%linear convolution of 2 discrete signals

x_values = input('Enter the values of x(n) in square brackets: ');
t_x = input('Enter the corresponding time values of x(n) in square brackets: ');

h_values = input('Enter the values of h(n) in square brackets: ');
t_h = input('Enter the corresponding time values of h(n) in square brackets: ');

% Calculate linear convolution
M = length(x_values);
N = length(h_values);
L = M + N - 1;

y_values = zeros(1, L);
t_y = min(t_x) + min(t_h) : max(t_x) + max(t_h);

for n = 1:L
    for k = max(1, n-N+1):min(M, n)
        y_values(n) = y_values(n) + x_values(k) * h_values(n-k+1);
    end
end

% Plotting input signals
subplot(3, 1, 1);
stem(t_x, x_values, 'r');
title('Signal x(n)');

subplot(3, 1, 2);
stem(t_h, h_values, 'b');
title('Signal h(n)');

% Plotting convolution result
subplot(3, 1, 3);
stem(t_y, y_values, 'g');
title('Linear Convolution y(n)');

% Adjusting subplot layout
sgtitle('Linear Convolution of x(n) and h(n)');

% displaying results
disp('Linear Convolution Result:');
disp(y_values);

% [1,2,0.5,1]
% [0,1,2,3]
% [1,2,1,-1]
% [-1,0,1,2]