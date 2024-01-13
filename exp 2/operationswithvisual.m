
% Signal Operations Menu with Visualization

while true
    % Display menu options
    fprintf('\nSignal Operations Menu:\n');
    fprintf('1. Addition of signals\n');
    fprintf('2. Subtraction of signals\n');
    fprintf('3. Multiplication of signals\n');
    fprintf('4. Scaling (Upscaling & Downscaling)\n');
    fprintf('5. Shift operation (Advance/Right shift & Delay/Left shift)\n');
    fprintf('6. Folding\n');
    fprintf('0. Exit\n');
    
    % User input for menu choice
    choice = input('Enter your choice (0-6): ');

    % Exit the program if the user chooses 0
    if choice == 0
        fprintf('Exiting the program.\n');
        break;
    end

    % Input signals
    signal1 = input('Enter signal 1: ');
    signal2 = input('Enter signal 2: ');

    % Perform the selected operation
    switch choice
        case 1
            result = signal1 + signal2;
            disp('Result of Addition:');
            disp(result);

            % Plot signals and result
            subplot(3, 1, 1);
            stem(signal1, 'b', 'LineWidth', 2);
            title('Signal 1');

            subplot(3, 1, 2);
            stem(signal2, 'r', 'LineWidth', 2);
            title('Signal 2');

            subplot(3, 1, 3);
            stem(result, 'g', 'LineWidth', 2);
            title('Result');

            sgtitle('Addition of Signals');

        case 2
            result = signal1 - signal2;
            disp('Result of Subtraction:');
            disp(result);

            % Plot signals and result
            subplot(3, 1, 1);
            stem(signal1, 'b', 'LineWidth', 2);
            title('Signal 1');

            subplot(3, 1, 2);
            stem(signal2, 'r', 'LineWidth', 2);
            title('Signal 2');

            subplot(3, 1, 3);
            stem(result, 'g', 'LineWidth', 2);
            title('Result');

            sgtitle('Subtraction of Signals');

        case 3
            result = signal1 .* signal2;
            disp('Result of Multiplication:');
            disp(result);

            % Plot signals and result
            subplot(3, 1, 1);
            stem(signal1, 'b', 'LineWidth', 2);
            title('Signal 1');

            subplot(3, 1, 2);
            stem(signal2, 'r', 'LineWidth', 2);
            title('Signal 2');

            subplot(3, 1, 3);
            stem(result, 'g', 'LineWidth', 2);
            title('Result');

            sgtitle('Multiplication of Signals');

        case 4
            scale_factor = input('Enter scaling factor: ');
            result1 = scale_factor * signal1;
            result2 = signal2 / scale_factor;
            disp('Result of Scaling:');
            disp('Upscaled Signal:');
            disp(result1);
            disp('Downscaled Signal:');
            disp(result2);

            % Plot signals and results
            subplot(3, 2, 1);
            stem(signal1, 'b', 'LineWidth', 2);
            title('Signal 1');

            subplot(3, 2, 2);
            stem(result1, 'g', 'LineWidth', 2);
            title('Upscaled Signal');

            subplot(3, 2, 3);
            stem(signal2, 'r', 'LineWidth', 2);
            title('Signal 2');

            subplot(3, 2, 4);
            stem(result2, 'm', 'LineWidth', 2);
            title('Downscaled Signal');

            sgtitle('Scaling of Signals');

        case 5
            shift_amount = input('Enter shift amount: ');
            result_shift_right = circshift(signal1, shift_amount);
            result_shift_left = circshift(signal1, -shift_amount);
            disp('Result of Shift Operation:');
            disp('Advance/Right Shifted Signal:');
            disp(result_shift_right);
            disp('Delay/Left Shifted Signal:');
            disp(result_shift_left);

            % Plot signals and results
            subplot(3, 2, 1);
            stem(signal1, 'b', 'LineWidth', 2);
            title('Signal 1');

            subplot(3, 2, 2);
            stem(result_shift_right, 'g', 'LineWidth', 2);
            title('Advance/Right Shifted Signal');

            subplot(3, 2, 3);
            stem(signal1, 'b', 'LineWidth', 2);
            title('Signal 1');

            subplot(3, 2, 4);
            stem(result_shift_left, 'm', 'LineWidth', 2);
            title('Delay/Left Shifted Signal');

            sgtitle('Shift Operations on Signals');

        case 6
            result_folded = fliplr(signal1);
            disp('Result of Folding:');
            disp(result_folded);

            % Plot signals and result
            subplot(2, 1, 1);
            stem(signal1, 'b', 'LineWidth', 2);
            title('Original Signal');

            subplot(2, 1, 2);
            stem(result_folded, 'g', 'LineWidth', 2);
            title('Folded Signal');

            sgtitle('Folding of Signal');

        otherwise
            disp('Invalid choice. Please enter a number between 0 and 6.');
    end
end
