options = optimset('GradObj', 'on', 'MaxIter', '100');
initialTheta = zeros(2, 1);         % 给参数设定一个初值
[optTheta, functionVal, exutFlag] = fminunc(@costFunction, initialTheta, options)