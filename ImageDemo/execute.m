%% Large Scale Zoomed Out Image - Manupulation

% Author : Bharat Singh

% Initialization
clear ; close all; clc

fprintf('Loading Image ... \n');
image = imread('area2.tif');
image = rgb2gray(image(1:800,1:1856,1:3));

quads = segmentImage(image);

fprintf('Plotting Segmented Image ... \n');

subplot(4,3,2),imshow(image);
subplot(4,3,4),imshow(quads(:,:,1));
subplot(4,3,6),imshow(quads(:,:,2));
subplot(4,3,8),imshow(quads(:,:,3));
subplot(4,3,10),imshow(quads(:,:,4));
subplot(4,3,12),imshow(quads(:,:,5));

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('Start: Training Classifier ... \n');
SVMStruct = learnSVMClassifier();
fprintf('Finish: Training Classifier\n');

fprintf('Sending Segments to classifier ... \n');

inputImg = imread('beach42.tif');
inputImg = inputImg(:,:,1:3);
inputImg = im2double(inputImg);
inputImg = rgb2gray(inputImg);
inputImg = imresize(inputImg, [200 200]);
inputImg = edge(inputImg,'Canny');
inputImg = reshape (inputImg', 1, size(inputImg,1)*size(inputImg,2));
result(1) = svmclassify(SVMStruct, inputImg);

inputImg = quads(:,:,1);
inputImg = im2double(inputImg);
inputImg = imresize(inputImg, [200 200]);
inputImg = edge(inputImg,'Canny');
inputImg = reshape (inputImg', 1, size(inputImg,1)*size(inputImg,2));
result(2) = svmclassify(SVMStruct, inputImg);

inputImg = quads(:,:,2);
inputImg = im2double(inputImg);
inputImg = imresize(inputImg, [200 200]);
inputImg = edge(inputImg,'Canny');
inputImg = reshape (inputImg', 1, size(inputImg,1)*size(inputImg,2));
result(3) = svmclassify(SVMStruct, inputImg);

inputImg = quads(:,:,3);
inputImg = im2double(inputImg);
inputImg = imresize(inputImg, [200 200]);
inputImg = edge(inputImg,'Canny');
inputImg = reshape (inputImg', 1, size(inputImg,1)*size(inputImg,2));
result(4) = svmclassify(SVMStruct, inputImg);

inputImg = quads(:,:,4);
inputImg = im2double(inputImg);
inputImg = imresize(inputImg, [200 200]);
inputImg = edge(inputImg,'Canny');
inputImg = reshape (inputImg', 1, size(inputImg,1)*size(inputImg,2));
result(5) = svmclassify(SVMStruct, inputImg);

inputImg = quads(:,:,5);
inputImg = im2double(inputImg);
inputImg = imresize(inputImg, [200 200]);
inputImg = edge(inputImg,'Canny');
inputImg = reshape (inputImg', 1, size(inputImg,1)*size(inputImg,2));
result(6) = svmclassify(SVMStruct, inputImg);

result(2:6)

