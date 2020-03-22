function [all_theta] = oneVsAll(X, y, num_labels, lambda)

m = size(X, 1);
n = size(X, 2);

all_theta = zeros(num_labels, n + 1);
% Add ones to the X data matrix
X = [ones(m, 1) X];


% Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 50);

% Run fmincg to obtain the optimal theta
% This function will return theta and the cost 
for c = 1:num_labels
 tc = c -1
 initial_theta = zeros(n + 1, 1);
 theta = fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)) , initial_theta, options);
 all_theta(tc+1,:) = theta;
end

% =========================================================================


end
