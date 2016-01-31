dat = imread('image1.jpg');

a = rgb2gray(dat);

figure, imhist(a);