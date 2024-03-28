% image = imread('_MG_9276.JPG');
image = imread('_MG_6388.JPG');

% Convert to grayscale
gray_image = rgb2gray(image);

% Define the high pass filter kernel
filter = [-1 -1 -1; -1 9 -1; -1 -1 -1];

% Apply the filter
new_image = imfilter(gray_image, filter);

% boost factor
boost_factor = 1.5;
boost_filter = filter * boost_factor;

% Apply the filter
boosted_image = imfilter(gray_image, boost_filter);

% Display the images
figure;
subplot(1, 3, 1);
imshow(gray_image);
title('Original Image');

subplot(1, 3, 2);
imshow(new_image);
title('High Pass Filtered Image');

subplot(1, 3, 3);
imshow(boosted_image);
title('High Pass Filtered Image (Boosted)');
