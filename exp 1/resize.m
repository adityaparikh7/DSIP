%reading image from file
img = imread('exp 1/254A4667.jpg'); %enter path here

%resizing image to 256x256
resized_img = imresize(img, [256 256]);

imshow(resized_img);
title('Resized Image');