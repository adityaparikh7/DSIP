% % Thresholding
% original_image = imread('exp 5\_MG_9276.JPG');
% threshold_value = 128; % Adjust threshold value as needed
% thresholded_image = original_image > threshold_value;

% % Convert logical array to uint8 for display
% thresholded_image_display = uint8(thresholded_image) * 255;

% imshow(thresholded_image_display);


% % Image negative
% img = imread('_MG_9276.JPG');
% [m, n] = size(img);

% % To find the maximum grey level value in the image
% L = max(img(:));

% % Maximum grey level value minus the original image gives the negative image
% img_neg = L - img;

% % Convert the image to uint8 before writing to avoid precision issues
% imwrite(uint8(img_neg), 'Cameraman_Negative.png');

% % Thresholding without background
% T = 150;

% % Create an array of zeros
% img_thresh = zeros(m, n);

% for i = 1:m
%     for j = 1:n
%         if img(i, j) < T
%             img_thresh(i, j) = 0;
%         else
%             img_thresh(i, j) = 255;
%         end
%     end
% end

% % Convert array to uint8 before writing to avoid precision issues
% imwrite(uint8(img_thresh), 'Cameraman_Thresh.png');

% % Thresholding with background
% T1 = 100;
% T2 = 180;

% img_thresh_back = zeros(m, n);

% for i = 1:m
%     for j = 1:n
%         if T1 < img(i, j) && img(i, j) < T2
%             img_thresh_back(i, j) = 255;
%         else
%             img_thresh_back(i, j) = img(i, j);
%         end
%     end
% end

% % Convert array to uint8 before writing to avoid precision issues
% imwrite(uint8(img_thresh_back), 'Cameraman_Thresh_Back.png');


I = imread('_MG_9276.JPG');
imshow(I);
%%  Convert to grayscale image
Igray = rgb2gray(I);
imshow(Igray);
 %% Problem: illumination doesn't allow for easy segmentation
level = 0.67;
Ithresh = im2bw(Igray,level);
imshowpair(I, Ithresh, 'montage');