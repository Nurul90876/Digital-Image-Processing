x = imread("nurul.jpg");
img = imnoise(x,'salt & pepper',0.05);
y = medfilt2(noise);
z = flip(x, 1);

figure;
subplot(1,3,1);
imshow(x);
title("original image");
subplot(1,3,2);
imshow(y);
title("median image");
subplot(1,3,3);
imshow(z);
title("vertical image");

