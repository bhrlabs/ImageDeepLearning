%dat = imread('image2.jpg');
dat = imread('beach42.tif');
a = rgb2gray(dat);

eDat = edge(a,'Canny');

% eDat = edge(red,'Prewitt');

% BW = edge(red,'sobel','vertical');

% figure, imshow(eDat);

subplot(1, 2, 1), imshow(dat);
subplot(1, 2, 2), imshow(eDat);