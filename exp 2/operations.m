% Signal Operations Menu

% while true
%     % Display menu options
%     fprintf('\nSignal Operations Menu:\n');
%     fprintf('1. Addition of signals\n');
%     fprintf('2. Subtraction of signals\n');
%     fprintf('3. Multiplication of signals\n');
%     fprintf('4. Scaling (Upscaling & Downscaling)\n');
%     fprintf('5. Shift operation (Advance/Right shift & Delay/Left shift)\n');
%     fprintf('6. Folding\n');
%     fprintf('0. Exit\n');
    
%     % User input for menu choice
%     choice = input('Enter your choice (0-6): ');

%     % Exit the program if the user chooses 0
%     if choice == 0
%         fprintf('Exiting the program.\n');
%         break;
%     end

%     % Input signals
%     signal1 = input('Enter signal 1: ');
%     signal2 = input('Enter signal 2: ');

%     % Perform the selected operation
%     switch choice
%         case 1
%             result = signal1 + signal2;
%             disp('Result of Addition:');
%             disp(result);

%         case 2
%             result = signal1 - signal2;
%             disp('Result of Subtraction:');
%             disp(result);

%         case 3
%             result = signal1 .* signal2;
%             disp('Result of Multiplication:');
%             disp(result);

%         case 4
%             scale_factor = input('Enter scaling factor: ');
%             result1 = scale_factor * signal1;
%             result2 = signal2 / scale_factor;
%             disp('Result of Scaling:');
%             disp('Upscaled Signal:');
%             disp(result1);
%             disp('Downscaled Signal:');
%             disp(result2);

%         case 5
%             shift_amount = input('Enter shift amount: ');
%             result_shift_right = circshift(signal1, shift_amount);
%             result_shift_left = circshift(signal1, -shift_amount);
%             disp('Result of Shift Operation:');
%             disp('Advance/Right Shifted Signal:');
%             disp(result_shift_right);
%             disp('Delay/Left Shifted Signal:');
%             disp(result_shift_left);

%         case 6
%             result_folded = fliplr(signal1);
%             disp('Result of Folding:');
%             disp(result_folded);

%         otherwise
%             disp('Invalid choice. Please enter a number between 0 and 6.');
%     end
% end


