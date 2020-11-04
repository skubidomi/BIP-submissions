function [LUT, M] = mykmeans(S, k)
    [LUT, M] = step1_initialization(S, k); % initialization
    eps = 0.02; 
    converged = false; % for checking the distance between the old and new cluster centers
    t = 0; % iteration counter
    while (~converged) && (t<100)
        LUT = step2_assignment(S, k, LUT, M); % assignment step
        M_new = step3_update(S, k, LUT, M); % update and save into an variable to make a comparison
        converged = sum(sum((M_new-M).^2)) < eps;
        M = M_new;
        t = t + 1;
    end

    fprintf('Iteration finished after %d steps.\n', t);

end
