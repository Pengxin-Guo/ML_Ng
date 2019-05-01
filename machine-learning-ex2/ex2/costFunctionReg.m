function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

% My answer

Jtmp = 0;
h = zeros(m, 1);

% step1: compute hx
hx = X * theta;

% step2: compute h(hx)
h = sigmoid(hx);

% step3: compute cost function's sum part
for i = 1 : m
  Jtmp = Jtmp + (-y(i) * log(h(i)) - (1 - y(i)) * log(1 - h(i)));
endfor
J = (1 / m) * Jtmp + (lambda / (2 * m)) * sum(theta(2 : size(X, 2)).^2);

% step4: compute gradient's sum part
sum1 = zeros(size(X, 2), 1);   % #features row
for i = 1 : m
  sum1 = sum1 + (h(i) - y(i)).*X(i, :)';
endfor
grad(1) = (1 / m) * sum1(1);
grad(2 : size(X, 2)) = (1 / m) * sum1(2 :size(X, 2)) +(lambda / m) .* theta(2 : size(X, 2));



% =============================================================

end
