% Load the image (replace 'your_image.jpg' with the actual file name)
originalImage = imread('_MG_9276.JPG');

% Convert the color image to grayscale
originalGrayImage = rgb2gray(originalImage);

% Convert the grayscale image to double for accurate calculations
originalGrayImage = double(originalGrayImage);

% Take user input for values of r1, r2, s1, and s2
r1 = input('Enter r1 (minimum pixel value for stretching): ');
r2 = input('Enter r2 (maximum pixel value for stretching): ');
s1 = input('Enter s1 (desired minimum output intensity): ');
s2 = input('Enter s2 (desired maximum output intensity): ');

% Apply contrast stretching transformation
stretchedGrayImage = contrastStretching(originalGrayImage, r1, r2, s1, s2);

% Display the original and stretched images
figure;
subplot(1, 3, 1);
imshow(uint8(originalImage));
title('Original Color Image');

subplot(1, 3, 2);
imshow(uint8(originalGrayImage));
title('Original Grayscale Image');

subplot(1, 3, 3);
imshow(uint8(stretchedGrayImage));
title('Contrast Stretched Grayscale Image');

function stretchedImage = contrastStretching(inputImage, r1, r2, s1, s2)
    % Apply the contrast stretching transformation
    stretchedImage = (s2 - s1) / (r2 - r1) * (inputImage - r1) + s1;
    
    % Clip values to be within the desired output range
    stretchedImage = max(min(stretchedImage, s2), s1);
end