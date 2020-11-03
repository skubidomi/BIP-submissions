function [LUT, M] = step1_initialization(S, k)
    m = size(S,1); % number of elements in S space
    LUT = zeros(1,m);
    
    n = size(S,2);
    M = zeros(k,n); % k is clusters, n is dimension -> S second axis
    
    % choose every x-th element to able to reproduce the result
    diff = floor(m/k);
    M = S(1:diff:diff*k,:);
end
