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
    quads(:, :, 1) = image(1:(dim(1)/2), 1:(dim(2)/2));
    quads(:, :, 2) = image(1:(dim(1)/2), ((dim(2)/2)+1):dim(2));
    quads(:, :, 3) = image(((dim(1)/4)+1):(3* dim(1)/4), ((dim(2)/4)+1):(3* dim(2)/4));
    quads(:, :, 4) = image(((dim(1)/2)+1):dim(1), 1:(dim(2)/2));
    quads(:, :, 5) = image(((dim(1)/2)+1):dim(1), ((dim(2)/2)+1):dim(2));


