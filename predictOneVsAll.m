function p = predictOneVsAll(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier.

m = size(X, 1)
num_labels = size(all_theta, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

  size(all_theta)  
  for i = 1:num_labels
      fprintf('Label: %f\n', i);
      #fprintf('Theta for label at index: %f\n', i);
      #all_theta(i,:)'
      xtimestheta = X * all_theta(i,:)';
      sigmoidVals(i,:) = sigmoid(xtimestheta); 
  end
  #size(sigmoidVals)
  sigmoidVals = sigmoidVals';
  size(sigmoidVals)
  
  [val, class] = max(sigmoidVals, [], 2);
  
  size(class);
  p = class;
 

% =========================================================================


end
