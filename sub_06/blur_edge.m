function out_img = blur_edge(in_img)
    hsize = 60;
    sigma = 10;
    psf = fspecial('gaussian',hsize,sigma); % point spread function
    otf = psf2otf(psf,size(in_img)); % optical transfer function
    
    blurred_img = abs(ifft2(otf.*fft2(in_img)));
    % replace the edges with the blurred image
    wm = ones(70);
    wm = padarray(wm,[1 1],0,'both');
    wm2 = imresize(wm,size(in_img),'bilinear');
    wm2 = mat2gray(wm2,[0, 1]);
    out_img = in_img.*wm2 + blurred_img.*(1-wm2);
end
