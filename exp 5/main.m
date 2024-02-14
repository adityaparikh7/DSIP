% Image negative
img = imread('_MG_9276.JPG');
[m, n] = size(img);
L = max(img(:));
img_neg = L - img;

% Display images in a 2x2 grid
figure;

subplot(2, 2, 1);
imshow(img);
title('Original Image');

subplot(2, 2, 2);
imshow(uint8(img_neg));
title('Negative Image');

% Thresholding without background
T = 150;
img_thresh = zeros(m, n);
for i = 1:m
    for j = 1:n
        if img(i, j) < T
            img_thresh(i, j) = 0;
        else
            img_thresh(i, j) = 255;
        end
    end
end

subplot(2, 2, 3);
imshow(uint8(img_thresh));
title('Threshold Without Background');

% Thresholding with background
T1 = 100;
T2 = 180;
img_thresh_back = zeros(m, n);
for i = 1:m
    for j = 1:n
        if T1 < img(i, j) && img(i, j) < T2
            img_thresh_back(i, j) = 255;
        else
            img_thresh_back(i, j) = img(i, j);
        end
    end
end

subplot(2, 2, 4);
imshow(uint8(img_thresh_back));
title('Threshold With Background');



