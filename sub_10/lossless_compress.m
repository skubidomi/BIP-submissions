function [compressed_image] = lossless_compress(noncompressed_image)
    H = size(noncompressed_image,1);
    W = size(noncompressed_image,2);
    compressed_image = cell(H,1);
    for y = 1:H
        symbol = noncompressed_image(y,1);
        counter = 1;
        row_desc = symbol;
        for x = 2:W
            if symbol == noncompressed_image(y,x)
                counter = counter + 1;
            else
                symbol = 1 - symbol;
                row_desc = [row_desc, counter];
                counter = 1;
            end
        end
        row_desc = [row_desc, counter];
        compressed_image{y} = row_desc;
    end
end