%reading image from file
img = imread('exp 1/254A4667.jpg');

%converting image to grayscale
new_img = rgb2gray(img);

imshow(new_img);
title('grayscale image');