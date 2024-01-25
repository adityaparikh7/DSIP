    % Time vector
    n = -10:0.5:10;

    % impulse 
    impulse = zeros(size(n));
    impulse(n == 0) = 1;

    % unit step 
    unit_step = double(n >= 0);

    % ramp 
    ramp = n .* double(n >= 0);

    % exponential 
    a = 0.5; 
    exponential = exp(a * n) .* double(n >= 0);
    b = -0.5;
    exponential_neg = exp(b * n) .* double(n >= 0);
        
    % sinusoidal 
    frequency = 0.1; 
    sinusoidal = sin(2 * pi * frequency * n);

    % complex exponential
    c = 0.5;
    complex_exponential = exp(1i * c * n) .* double(n >= 0);


    % Plotting
    subplot(3, 3, 1);
    stem(n, impulse);
    title('Impulse Signal');

    subplot(3, 3, 2);
    stem(n, unit_step);
    title('Unit Step Signal');

    subplot(3, 3, 3);
    stem(n, ramp);
    title('Ramp Signal');

    subplot(3, 3, 4);
    stem(n, exponential);
    title('Exponential Signal');

    subplot(3, 3, 5);
    stem(n, exponential_neg);
    title('Decreasing Exponential Signal');

    subplot(3, 3, 6);
    stem(n, sinusoidal);
    title('Sinusoidal Signal');

    subplot(3, 3, 7);
    stem(n, complex_exponential);
    title('Complex Exponential Signal');

%sgtitle('Discrete-time Signals');