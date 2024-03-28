% 8-point 1D IDFT implementation with graphs

% Parameters
N = 8; % FFT size
X = [1 2 3 4 5 6 7 8]; % Frequency domain representation

% Check if N is a power of 2
if log2(N) ~= round(log2(N))
    error('N must be a power of 2');
end

% Check if the input sequence length is equal to N
if length(X) ~= N
    error('Input sequence length must be equal to N');
end

% Display frequency domain representation
disp('Frequency Domain Representation:');
disp(X);

% Plot frequency domain representation
subplot(2, 1, 1);
stem(0:N-1, abs(X), 'b', 'LineWidth', 1.5);
title('Frequency Domain Representation');
xlabel('Index');
ylabel('Magnitude');
grid on;

% Generate twiddle factors
W = zeros(1, N);
for k = 1:N
    for n = 1:N
        W(k) = W(k) + X(n) * exp(1i*2*pi*(k-1)*(n-1)/N);
    end
    W(k) = W(k) / N;
end

% Display twiddle factors
disp('Twiddle Factors:');
disp(W);

% Display IDFT output sequence
disp('IDFT Output Sequence:');
disp(x);

% Plot IDFT output sequence
subplot(2, 1, 2);
stem(0:N-1, real(W), 'r', 'LineWidth', 1.5);
title('IDFT Output Sequence');
xlabel('Index');
ylabel('Amplitude');
grid on;