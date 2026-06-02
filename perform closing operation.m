img = imread('Amir.jpg');
img = im2gray(img);
bw = imbinarize(img);

se = strel('disk', 3);
F = imdilate(bw, se);
F = imerode(F, se); 
figure;
subplot(2,3,1), 
imshow(bw), 
title('Original');
subplot(2,3,2),
imshow(F),
title('Closing (F)');
