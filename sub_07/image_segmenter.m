function [O] = image_segmenter(I, k)
    S = reshape(I,size(I,1)*size(I,2),size(I,3)); % convert to the proper format
    [LUT, M] = mykmeans(S,k);
    A = zeros(size(LUT,2),size(M,2)); % A will be the segmented image after kmeans algorithm
    for i = 1:size(LUT,2)
        A(i,:) = M(LUT(i),:);
    end
    O = reshape(A,size(I,1),size(I,2),size(I,3)); % convert it back
end
