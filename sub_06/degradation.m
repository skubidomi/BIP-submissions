function [y, h, n] = degradation(x)
    len = 42;
    theta = 30;
    h = fspecial('motion', len, theta);
    n = sqrt(0.001) * randn(size(x));
    y = imfilter(x,h,'replicate','same','conv') + n; 
end
