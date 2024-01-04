% read an image from a file
image = imread('exp 1\254A4667.jpg');

% write the image to a new file in JPG format
imwrite(image, 'exp 1\254A4667_new.jpg');

% read the written image back and display it
newImage = imread('exp 1\254A4667_new.jpg');
imshow(newImage);
title('Written Image');
