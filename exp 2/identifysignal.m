function identifysignal()
    % enter x and y coordinates as space-separated values
    user_input = input('Enter x and y coordinates: ', 's');
    coordinates = str2double(user_input);
    x = coordinates(1:2:end);
    y = coordinates(2:2:end);
    signal_type = identifySignalType(x, y);
    fprintf('The identified signal type is: %s\n', signal_type);
    plotSignal(x, y);
end
function signal_type = identifySignalType(x, y)
    N = length(x);
    % Unit step signal
    if all(y == 1)
        signal_type = 'Unit Step Signal';
    % Impulse signal
    elseif sum(y) == 1
        signal_type = 'Impulse Signal';
    % Ramp signal
    elseif all(x == y)
        signal_type = 'Ramp Signal';
    % Exponential signal
    elseif all(diff(y) > 0)
        signal_type = 'Exponential Signal';
    % Sine signal
    elseif isequal(y, sin(linspace(0, 2*pi, N)))
        signal_type = 'Sine Signal';
    % Cosine signal
    elseif isequal(y, cos(linspace(0, 2*pi, N)))
        signal_type = 'Cosine Signal';
    else
        signal_type = 'Unknown Signal Type';
    end
end
function plotSignal(x, y)
    stem(x, y);
    xlabel('x');
    ylabel('Amplitude (y)');
    title('Input Signal');
    grid on;
end