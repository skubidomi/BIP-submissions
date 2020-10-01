function output_img = stretch_lin(input_img)
    img_max = double(max(input_img(:)));%vectorize with (:)
    img_min = double(min(input_img(:)));
    
    img_double = double(input_img);
    output_img = (255/(img_max-img_min)) * (img_double-img_min);
    output_img = uint8(output_img);
end