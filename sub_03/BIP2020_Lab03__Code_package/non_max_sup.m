function [r_vect, t_vect] = non_max_sup(H, k, p)
    r_vect = zeros(1,k);
    t_vect = zeros(1,k);
    while k>0
        [maxnum, maxind] = max(H(:)); %get maxind
        [x_n, y_n] = ind2sub(size(H),maxind); %convert maxind
        r_vect(end-k+1) = x_n;
        t_vect(end-k+1) = y_n;
        
        x_1 = max([1 x_n-p]);
        x_2 = min([size(H,1) x_n+p]);
        y_1 = max([1 y_n-p]);
        y_2 = min([size(H,2) y_n+p]);
        H(x_1:x_2, y_1:y_2) = 0;
        %visszafele gyûjtjük a számokat
        k = k-1;
    end
end