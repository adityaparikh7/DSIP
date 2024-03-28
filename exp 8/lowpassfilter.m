image = imread('_MG_9276.JPG');
% image = imread('_MG_6388.JPG');

% Convert to grayscale
gray_image = rgb2gray(image);

% Define the filter
size = 3;
sigma = 1.5;
filter_kernel = fspecial('gaussian', size, sigma);

% Apply the filter
new_image = imfilter(gray_image, filter_kernel, 'replicate');

% Display the original and smoothed images
figure;
subplot(1, 2, 1);
imshow(gray_image);
title('Original Image');

subplot(1, 2, 2);
imshow(new_image);
title('Smoothed Image');