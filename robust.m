img = imread('avi.jpg');
gray = rgb2gray(img);
gray = im2double(gray);
Gx = [1 0; 0 -1];
Gy = [0 1; 1 0];
Ix = conv2(gray, Gx, "same");
Iy = conv2(gray, Gy, "same");
G = sqrt(Ix.^2 + Iy.^2);

figure;
subplot(2,3,1); imshow(img); title('Original Image');
subplot(2,3,2); imshow(gray); title('Grayscale Image');
subplot(2,3,3); imshow(Ix,[]); title('Roberts Gx');
subplot(2,3,4); imshow(Iy, []); title('ROberts Gy');
subplot(2,3,5); imshow(G, []); title('Roberts Edge Detection');