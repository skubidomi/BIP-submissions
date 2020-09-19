function [BGR] = swap_RB_dumb(RGB)
    %BGR = ones(size(RGB));
    BGR = RGB;
    for i = 1:402
        for j = 1:608
            BGR(i,j,1) = RGB(i,j,3);
            BGR(i,j,3) = RGB(i,j,1);
            BGR(i,j,2) = RGB(i,j,2);
        end
    end 
end