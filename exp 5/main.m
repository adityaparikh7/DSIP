subplot(2, 3, 1);
imshow(img);
title('Original Image');

% Image negative
img = imread('_MG_9276.JPG');
[m, n] = size(img);
L = max(img(:));
img_neg = L - img;

subplot(2, 3, 2);
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

subplot(2, 3, 3);
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

subplot(2, 3, 4);
imshow(uint8(img_thresh_back));
title('Threshold With Background');

% Apply gray level slicing
img_gray_slice(img >= T1 & img <= T2) = 255;

subplot(2, 3, 5); 
imshow(img_gray_slice);
title('Gray Level Slicing');


% Bit plane slicing
bit_plane = bitget(img, 7);
img_bpslice = uint8(bit_plane == 1);

subplot(2, 3, 6);
imshow(img_bpslice);
title('Bit Plane Slicing');