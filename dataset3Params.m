function [C, sigma] = dataset3Params(X, y, Xval, yval)
C = 1;
sigma = 0.3;

minError = 10^6;
for i=[0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
  for j = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
    model = svmTrain(X,y,i, @(x1, x2)gaussianKernel(x1, x2, j));
    predictions = svmPredict(model,Xval);
    error = mean(double(predictions ~= yval));
    if (minError>error);
      minError = error;
      C = i;
      sigma = j;
    end
   end
end
% =========================================================================

end
