%reading image from file
img = imread(''); %enter path here

%converting image to grayscale
new_img = rgb2gray(img);

imshow(new_img);
title('grayscale image');