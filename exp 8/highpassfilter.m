image = imread('_MG_9276.JPG');

% Convert to grayscale
gray_image = rgb2gray(image);

% high pass filter
filter = [0 -1 0; -1 5 -1; 0 -1 0];

% Apply filter
new_image = imfilter(gray_image, filter);

figure;
subplot(1, 2, 1);
imshow(gray_image);
title('Original Image');

subplot(1, 2, 2);
imshow(new_image);
title('Sharpened Image');