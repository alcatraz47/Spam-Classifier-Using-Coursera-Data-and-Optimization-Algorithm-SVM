
clear ; close all; clc

fprintf('Loading and Visualizing Data ...\n')

load('data1.mat');

% Plot training data
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

load('data1.mat');

fprintf('\nTraining Linear SVM ...\n')

C = 1;
model = svmTrain(X, y, C, @linearKernel, 1e-3, 20);
visualizeBoundaryLinear(X, y, model);

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('\nEvaluating the Gaussian Kernel ...\n')

x1 = [1 2 1]; x2 = [0 4 -1]; sigma = 2;
sim = gaussianKernel(x1, x2, sigma);

fprintf(['Gaussian Kernel between x1 = [1; 2; 1], x2 = [0; 4; -1], sigma = %f :' ...
         '\n\t%f\n(for sigma = 2, this value should be about 0.324652)\n'], sigma, sim);

fprintf('Program paused. Press enter to continue.\n');
pause;


fprintf('Loading and Visualizing Data ...\n')

load('data2.mat');

% Plotting training data
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('\nTraining SVM with RBF Kernel (this may take 1 to 2 minutes) ...\n');

load('data2.mat');

C = 1; sigma = 0.1;


model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
visualizeBoundary(X, y, model);

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('Loading and Visualizing Data ...\n')

load('data3.mat');

%plotting
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

load('data3.mat');


[C, sigma] = dataset3Params(X, y, Xval, yval);

% Train the SVM
model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
visualizeBoundary(X, y, model);

fprintf('Program paused. Press enter to continue.\n');
pause;

