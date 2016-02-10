function [ans, value] =  slideOverImages(image)
%The function slides over the image using a window of a fixed aspect
%ratio. Checks for a pattern match with each image to produce a PDF.help
% Author: Bharat Singh
 
%img = imread('image2.jpg');
 img = imread('beach42.tif');
 img1 = rgb2gray(img);
 %img = img(1:100,1:100);
 [featureVector, hogVisualization] = extractHOGFeatures(img1);
 %figure;
 %imshow(img); hold on;
 %plot(hogVisualization);
 
 subplot(1, 2, 1), imshow(img);
 subplot(1, 2, 2), imshow(img),hold on, plot(hogVisualization);
 %size(featureVector)
 