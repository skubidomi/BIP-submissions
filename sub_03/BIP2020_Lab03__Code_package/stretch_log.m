function output_img = stretch_log(input_img, c)
    img_double = double(input_img); % 
    log_img = c*log(img_double+1);
    
    img_max = double(max(log_img(:)));%vectorize with (:)
    img_min = double(min(log_img(:)));
    
    output_img = (255/(img_max-img_min)) * (log_img-img_min);
    output_img = uint8(output_img);
end