function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% My answer

J = 0;
grad = zeros(size(theta);

Jtmp = 0;
h = zeros(m, 1);

% step1: compute hx
hx = X * theta;

% step2: compute h(hx)
h = sigmoid(hx);

% step3: compute cost function's sum part
for i = 1 : m
  Jtmp  = Jtmp + (-y(i) * log(h(i)) - (1 - y(i)) * log(1 - h(i)));
endfor
J = (1 / m) * Jtmp;

% step4: compute gradient'sum part
sum1 = zeros(size(X, 2), 1);  % #features row
for i = 1 : m
  sum1 = sum1 + (h(i) - y(i)).*X(i, :)';
endfor
grad = (1 / m) * sum1;


% =============================================================

end
