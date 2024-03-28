original_image = imread('_MG_9276.JPG');

gray_image = rgb2gray(original_image);

original_histogram = imhist(gray_image);

cdf = cumsum(original_histogram)/numel(gray_image);

equalized_image = uint8(255 * cdf(gray_image + 1));

equalized_histogram = imhist(equalized_image);

subplot(2,3,1);
imshow(original_image);
title('Original Image');

subplot(2,3,2);
imshow(gray_image);
title('Grayscale Image')

subplot(2,3,3);
imshow(equalized_image);
title('Equalized Image');

subplot(2,3,5);
imhist(gray_image);
ylim("manual")
title('Original Histogram')

subplot(2,3,6);
imhist(equalized_image);
ylim("manual")
title('Equalized Histogram')