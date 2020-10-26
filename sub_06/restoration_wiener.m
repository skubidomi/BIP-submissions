function [x_tilde] = restoration_wiener(y, h, n)
    Y = fft2(y);
    N = fft2(n);
    H = psf2otf(h,size(Y));
    
    P_YY = Y .* conj(Y);
    P_NN = N .* conj(N);
    
    R = conj(H)./(abs(H).^2 + P_NN./P_YY);
    x_tilde = abs(ifft2(R.*Y));
end
