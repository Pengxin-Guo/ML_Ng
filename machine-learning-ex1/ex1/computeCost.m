function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% My answer

Jtmp = 0;
h = zeros(m, 1);

% step1: compute hx
h = X * theta;

% step2: compute cost function's sum part
for i = 1:m
  Jtmp  = Jtmp + (y(i) - h(i)) * (y(i) - h(i));
endfor
J = Jtmp / (2 * m);


% =========================================================================

end
