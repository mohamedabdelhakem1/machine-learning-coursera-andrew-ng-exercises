function[] = Plotting_learning_curveswith_randomly_selected_examples(X,y,Xval,yval,lambda)
m = size(X,1);
error_train = zeros(m,1);
error_val = zeros(m,1);
X_train = X(randperm(length(X)));
y_train = y(randperm(length(X)));
X_val = Xval(randperm(length(Xval)));
y_val = yval(randperm(length(yval)));
for i = 1 :m
[theta] = trainLinearReg(X_train(1:i,:), y_train(1:i,:), lambda);
[J grad] =  linearRegCostFunction(X_train(1:i,:) ,y_train(1:i), theta, 0);
error_train(i) = J;
[J grad] =  linearRegCostFunction(X_val(1:i,:), y_val(1:i,:), theta, 0);
error_val(i) = J ;
end
plot(1:m, error_train, 1:m, error_val);
end