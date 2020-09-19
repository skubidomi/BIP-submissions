function output_img = myconv(input_img, kernel)
    output_img = input_img;
    pad_y = (size(kernel,1)-1)/2;
    pad_x = (size(kernel,2)-1)/2;
    input_img = padarray(input_img,[pad_y,pad_x],0,'both');
    kernel = rot90(kernel,2);
    
    for i = 1:(size(input_img,1)-2*pad_y)
        for j = 1:(size(input_img,2)-2*pad_x)
            output_img(i,j) = sum(sum(kernel.*input_img(i:i+2*pad_y,j:j+2*pad_x)));
        end
    end
    
end
