function SVMStruct = learnSVMClassifier()

    % Training SVM Classifier
    folderForest = 'C:/Bharat/Masters Material/GIT Repo/ImageDeepLearning/ImageDemo/Images/forest/';
    folderAgri = 'C:/Bharat/Masters Material/GIT Repo/ImageDeepLearning/ImageDemo/Images/agricultural/';
    folderTennis = 'C:/Bharat/Masters Material/GIT Repo/ImageDeepLearning/ImageDemo/Images/tenniscourt/';
    folderParking = 'C:/Bharat/Masters Material/GIT Repo/ImageDeepLearning/ImageDemo/Images/parkinglot/';
    folderRiver = 'C:/Bharat/Masters Material/GIT Repo/ImageDeepLearning/ImageDemo/Images/river/';
    folderIntersection = 'C:/Bharat/Masters Material/GIT Repo/ImageDeepLearning/ImageDemo/Images/intersection/';
    folderResi = 'C:/Bharat/Masters Material/GIT Repo/ImageDeepLearning/ImageDemo/Images/denseresidential/';
    
    imagefilesForest = dir([folderForest '*.tif']);
    imagefilesAgri = dir([folderAgri '*.tif']);
    imagefilesTennis = dir([folderTennis '*.tif']);
    imagefilesParking = dir([folderParking '*.tif']);
    imagefilesRiver = dir([folderRiver '*.tif']);
    imagefilesIntersection = dir([folderIntersection '*.tif']);
    imagefilesResi = dir([folderResi '*.tif']);
    
    nfiles = 630; 

    i = 1;
    for j = 1:90
        currentfilename = imagefilesForest(j).name;
        currentimage = imread([folderForest currentfilename]);
        images{i} = currentimage;
        images{i} = im2double(images{i});
        images{i} = rgb2gray(images{i});
        images{i} = imresize(images{i},[200 200]);
        images{i} = edge(images{i},'Canny');
        images{i} = reshape(images{i}', 1, size(images{i},1)*size(images{i},2));
        i = i + 1;
    end

    for j = 1:90
        currentfilename = imagefilesAgri(j).name;
        currentimage = imread([folderAgri currentfilename]);
        images{i} = currentimage;
        images{i} = im2double(images{i});
        images{i} = rgb2gray(images{i});
        images{i} = imresize(images{i},[200 200]);
        images{i} = edge(images{i},'Canny');
        images{i} = reshape(images{i}', 1, size(images{i},1)*size(images{i},2));
        i = i + 1;
    end

    for j = 1:90
        currentfilename = imagefilesTennis(j).name;
        currentimage = imread([folderTennis currentfilename]);
        images{i} = currentimage;
        images{i} = im2double(images{i});
        images{i} = rgb2gray(images{i});
        images{i} = imresize(images{i},[200 200]);
        images{i} = edge(images{i},'Canny');
        images{i} = reshape(images{i}', 1, size(images{i},1)*size(images{i},2));
        i = i + 1;
    end

    for j = 1:90
        currentfilename = imagefilesParking(j).name;
        currentimage = imread([folderParking currentfilename]);
        images{i} = currentimage;
        images{i} = im2double(images{i});
        images{i} = rgb2gray(images{i});
        images{i} = imresize(images{i},[200 200]);
        images{i} = edge(images{i},'Canny');
        images{i} = reshape(images{i}', 1, size(images{i},1)*size(images{i},2));
        i = i + 1;
    end

    for j = 1:90
        currentfilename = imagefilesRiver(j).name;
        currentimage = imread([folderRiver currentfilename]);
        images{i} = currentimage;
        images{i} = im2double(images{i});
        images{i} = rgb2gray(images{i});
        images{i} = imresize(images{i},[200 200]);
        images{i} = edge(images{i},'Canny');
        images{i} = reshape(images{i}', 1, size(images{i},1)*size(images{i},2));
        i = i + 1;
    end

    for j = 1:90
        currentfilename = imagefilesIntersection(j).name;
        currentimage = imread([folderIntersection currentfilename]);
        images{i} = currentimage;
        images{i} = im2double(images{i});
        images{i} = rgb2gray(images{i});
        images{i} = imresize(images{i},[200 200]);
        images{i} = edge(images{i},'Canny');
        images{i} = reshape(images{i}', 1, size(images{i},1)*size(images{i},2));
        i = i + 1;
    end
    
    for j = 1:90
        currentfilename = imagefilesResi(j).name;
        currentimage = imread([folderResi currentfilename]);
        images{i} = currentimage;
        images{i} = im2double(images{i});
        images{i} = rgb2gray(images{i});
        images{i} = imresize(images{i},[200 200]);
        images{i} = edge(images{i},'Canny');
        images{i} = reshape(images{i}', 1, size(images{i},1)*size(images{i},2));
        i = i + 1;
    end

    trainData = zeros(nfiles, 40000);

    for ii=1:nfiles
        trainData(ii,:) = images{ii};
    end

    a = ones(1, 90);
    b = ones(1, 540);
    b = b * -1;
    class = [a b];
    SVMStruct = svmtrain (trainData, class);