function quads = segmentImage(image)
    % Input is an image on Gray Scale.
    %
    % Returs 5 quadrants of the image.
    % Author: Bharat Singh

    fprintf('Starting Image Segmentation ... \n');
    
    % Dimensions of the Image
    dim = size(image);

    % Initializing return variable
    quads = zeros(dim(1)/2, dim(2)/2, 5, 'uint8');

    % Setting each of the five quadrants
    quads(:, :, 1) = img(1:dim(1)/2, 1:dim(1)/2);
    quads(:, :, 2) = img(1:dim(1)/2, 1:dim(1)/2);
    quads(:, :, 3) = img(1:dim(1)/2, 1:dim(1)/2);
    quads(:, :, 4) = img(1:dim(1)/2, 1:dim(1)/2);
    quads(:, :, 5) = img(1:dim(1)/2, 1:dim(1)/2);


