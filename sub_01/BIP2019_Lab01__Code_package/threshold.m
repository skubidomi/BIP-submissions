function [TH] = threshold(IMG, level)
    if ~(size(IMG, 3)==1)
        warning('image is not gray');
        IMG = rgb2gray(IMG);
    end
    
    idx = (IMG<level);
    TH = ones(size(IMG))*255;
    TH(idx)=0; %use the indexes to write zeros  ;)
end