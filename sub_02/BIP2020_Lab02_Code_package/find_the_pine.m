function pine = find_the_pine(I)
    R = squeeze(I(:,:,1));
    G = squeeze(I(:,:,2));
    B = squeeze(I(:,:,3));    
    
    I_hsv = rgb2hsv(I);
    
    H = squeeze(I_hsv(:,:,1));
    S = squeeze(I_hsv(:,:,2));
    V = squeeze(I_hsv(:,:,3));
    
    pine = H<0.13 | H>0.7;
end