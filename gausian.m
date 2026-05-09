img = imread("alam.jpg");
img_gauss = imgaussfilt(img, 2);

%display
figure;
subplot(1,2,1);
imshow(img);
title("original");

subplot(1,2,2);
imshow(img_gauss);
title("gaussian filter");
