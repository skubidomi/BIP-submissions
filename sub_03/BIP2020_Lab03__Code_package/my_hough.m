function [H] = my_hough(input_img)
    r_longest = round(sqrt(size(input_img, 1)^2 + size(input_img, 2)^2));
    H = zeros(r_longest, 180);
    
    for x=1:size(input_img, 1)
        for y=1:size(input_img, 2)
            if input_img(x,y)~=0
                for theta = 1:180
                    r = round(x*cosd(theta)+y*sind(theta)); %calculate radius in the current edge point for every theta value
                    if (0<r) && (r<size(H,1)+1)
                        H(r,theta)=H(r,theta)+1; %increment H at the appropriate location
                    end 
                end
            end
        end
    end
end