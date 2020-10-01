function hist_vector = calc_hist_vector(input_img)
    hist_vector = zeros(1,256);
    for r = 1:size(input_img, 1) %rows
        for c = 1:size(input_img, 2) %columns
            value = input_img(r,c);
            hist_vector(value+1) = hist_vector(value+1)+1;
        end
    end
end