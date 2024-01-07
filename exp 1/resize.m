%reading image from file
img = imread(''); %enter path here

%resizing image to 256x256
resized_img = imresize(img, [256 256]);

imshow(resized_img);
title('Resized Image');