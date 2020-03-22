function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

%  p - vector of labels between 1 to num_labels.
%
% max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. 
% If  examples are in rows use max(A, [], 2) to obtain the max for each row.
%


% to do, in next commit predicting with Theta1 and Theta2

a1 = [ones(m, 1) X];

%size(a1)

%size(Theta1)

z2 = a1 * Theta1';

a2 = sigmoid(z2);

a2 = [ones(size(a2, 1), 1) a2];

%fprintf('First row of a2: \n');
%a2(1,1:5)

%fprintf('Size of a2: \n');
%size(a2)

%fprintf('Size of Theta2: \n');
%size(Theta2)

z3 = a2 * Theta2';

a3 = sigmoid(z3);

%fprintf('Size of a3: \n');
%size(a3)

%fprintf('First row of a3: \n');
%a3(1,1:5)


[prob, p] = max(a3, [], 2);

%fprintf('Size of p: \n');
%size(p)

%fprintf('First row of p: \n');
%p(1:5)



pause;
% =========================================================================
end
