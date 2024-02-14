% Read the original image
original_image = imread('exp 5\_MG_9276.JPG');

% Gray Level Slicing parameters
low_value = 50; % Adjust lower threshold as needed
high_value = 200; % Adjust upper threshold as needed

% Gray Level Slicing without Background
result_without_background = original_image;
result_without_background(original_image >= low_value & original_image <= high_value) = 255;
result_without_background(original_image < low_value | original_image > high_value) = 0;

% Gray Level Slicing with Background
result_with_background = original_image;
result_with_background(original_image >= low_value & original_image <= high_value) = 255;
result_with_background(original_image < low_value | original_image > high_value) = 0;

% Display images
figure;

subplot(1, 3, 1);
imshow(original_image);
title('Original Image');

subplot(1, 3, 2);
imshow(result_without_background);
title('Gray Level Slicing Without Background');

subplot(1, 3, 3);
imshow(result_with_background);
title('Gray Level Slicing With Background');
