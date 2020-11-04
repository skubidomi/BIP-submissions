function M = step3_update(S, k, LUT, M)
    for j = 1:k % iterate through M
        LUT_sel = (LUT==j); 
        S_sel = S(LUT_sel,:); % select S elements where the LUT_selected is 1
        M(j,:) = mean(S_sel); % update M with the new cluster center      
    end
end
