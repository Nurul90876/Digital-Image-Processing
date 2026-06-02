img = imread('avi.jpg');

img = im2gray(img); 
bw = imbinarize(img);

se = strel('disk', 3);

C = imerode(bw, se);
D = imdilate(bw, se);

E = imerode(bw, se);
E = imdilate(E, se);  

F = imdilate(bw, se);
F = imerode(F, se); 

figure;
subplot(2,3,1), imshow(bw), title('Original');
subplot(2,3,2), imshow(C), title('Erosion (C)');
subplot(2,3,3), imshow(D), title('Dilation (D)');
subplot(2,3,4), imshow(E), title('Opening (E)');
subplot(2,3,5), imshow(F), title('Closing (F)');