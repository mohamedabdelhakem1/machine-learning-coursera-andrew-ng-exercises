function [error_test] = Computingtestseterror(X , y , Xtest,ytest,lambda)
[theta] = trainLinearReg(X, y, lambda);
[J grad] = linearRegCostFunction(Xtest, ytest, theta, 0); 
error_test = J;
end
