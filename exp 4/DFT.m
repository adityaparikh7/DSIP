% % 8-point 1D DIT FFT implementation without using functions

% % Parameters
% N = 8; % FFT size
% x = [1 2 3 4 5 6 7 8]; % Input sequence

% % Check if N is a power of 2
% if log2(N) ~= round(log2(N))
%     error('N must be a power of 2');
% end

% % Check if the input sequence length is equal to N
% if length(x) ~= N
%     error('Input sequence length must be equal to N');
% end

% % Bit-reversal permutation function
% N = length(x);
% n = log2(N);
% y = zeros(1, N);
% for i = 1:N
%     y(i) = bin2dec(fliplr(dec2bin(i-1, n))) + 1;
% end
% x = x(y);

% % 1D DIT FFT
% for i = 1:log2(N)
%     L = 2^i;
%     B = N/L;
%     for j = 1:L/2
%         for k = 1:B
%             a = x((j-1)*B + k);
%             b = x((j-1)*B + k + B);
%             x((j-1)*B + k) = a + b*exp(-1i*2*pi*(j-1)*(k-1)/N);
%             x((j-1)*B + k + B) = a - b*exp(-1i*2*pi*(j-1)*(k-1)/N);
%         end
%     end
% end

% % Output FFT sequence
% X = x;
% disp(X);


% 8-point 1D DIT FFT implementation with graphs

% Parameters
N = 8; % FFT size
% Input sequence
% x = [1 2 3 4 5 6 7 8]; 
x = [0,4,2,6,1,5,3,7];

% Check if N is a power of 2
if log2(N) ~= round(log2(N))
    error('N must be a power of 2');
end

% Check if the input sequence length is equal to N
if length(x) ~= N
    error('Input sequence length must be equal to N');
end
% Display input sequence
disp('Input Sequence:');
disp(x);

% Generate twiddle factors
W = zeros(1, N/2);
for k = 1:N/2
    W(k) = exp(-1i*2*pi*(k-1)/N);
end

% Display twiddle factors
disp('Twiddle Factors:');
disp(W);

% Plot input sequence
subplot(2, 1, 1);
stem(0:N-1, x, 'b', 'LineWidth', 1.5);
title('Input Sequence');
xlabel('Index');
ylabel('Amplitude');
grid on;

% Bit-reversal permutation function
N = length(x);
n = log2(N);
y = zeros(1, N);
for i = 1:N
    y(i) = bin2dec(fliplr(dec2bin(i-1, n))) + 1;
end
x = x(y);

% 1D DIT FFT
for i = 1:log2(N)
    L = 2^i;
    B = N/L;
    for j = 1:L/2
        for k = 1:B
            a = x((j-1)*B + k);
            b = x((j-1)*B + k + B);
            x((j-1)*B + k) = a + b*exp(-1i*2*pi*(j-1)*(k-1)/N);
            x((j-1)*B + k + B) = a - b*exp(-1i*2*pi*(j-1)*(k-1)/N);
        end
    end
end

% Display FFT output sequence
disp('FFT Output Sequence:');
disp(x);

% Plot FFT output sequence
subplot(2, 1, 2);
stem(0:N-1, abs(x), 'r', 'LineWidth', 1.5);
title('FFT Output Sequence');
xlabel('Index');
ylabel('Magnitude');
grid on;