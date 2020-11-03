function LUT = step2_assignment(S, k, LUT, M)
    m = size(S,1);
    d_ij = zeros(m,k);
    for i = 1:m
        for j = 1:k
            d_ij(i,j) = sum((S(i,:)-M(j,:)).^2);
        end
        [minimum,LUT(i)] = min(d_ij(i,:));
    end
end
