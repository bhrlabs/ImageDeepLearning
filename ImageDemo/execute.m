%% Large Scale Zoomed Out Image - Manupulation

% 

% Initialization
clear ; close all; clc

fprintf('Loading Image ... \n');
image = imread('area2.tif');
image = rgb2gray(image);

quads = segmentImage(image);

fprintf('Plotting Segmented Image ... \n');


pause;

fprintf('Sending Segments to classifier ... \n');