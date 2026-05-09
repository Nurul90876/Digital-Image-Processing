R = imread('avi.jpg')
se = [1 0 0;
      0 1 0;
      0 0 1];
subplot(2,2,1);
imshow(R);
title('Input');

I = im2bw(R);
subplot(2,2,2);
imshow(I);

S = imerode(I,se);
subplot(2,2,3);
imshow(S);
title('Erosion');

S = imdilate(I,se);
subplot(2,2,4);
imshow(S);
title('dilation');