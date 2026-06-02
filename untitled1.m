%Read the image
I = imread('lllliiiimmmmoooonnnn.jpg');

%display the original image
figure;
imshow(I);
title('original image');

%perform histogram eualization
I_eq = histeq(I);

%display the equalized image
figure;
imshow(I_eq);
title('Histogram Equalization image');

%show hist for comparison
figure;
subplot(1,2,1);
imhist(I);
title('original Histogram');

subplot(1,2,2);
imhist(I_eq);
title('Equalized');