image = imread('_MG_9276.JPG');

% Convert to grayscale
gray_image = rgb2gray(image);

% apply median filter
window = 3;
new_image = medfilt2(gray_image, [window window]);

% Display the original and median filtered images
figure;
subplot(1, 2, 1);
imshow(gray_image);
title('Original Image');

subplot(1, 2, 2);
imshow(new_image);
title('Median Filtered Image');