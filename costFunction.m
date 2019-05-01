function [jVal, gradient] = costFunction(theta)
  
  jVal = (theta(1) - 5) ^ 2 + (theta(2) - 5) ^ 2;      % 代价函数
  
  gradient = zeros(2, 1);
  gradient(1) = 2 * (theta(1) - 5);                    % 代价函数对第一个参数的偏导
  gradient(2) = 2 * (theta(2) - 5);                    % 代价函数对第二个参数的偏导
endfunction
