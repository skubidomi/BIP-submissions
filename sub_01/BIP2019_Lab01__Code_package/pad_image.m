function [PAD] = pad_image(varargin)
    %check input arguments
    if nargin == 1
        IMG = varargin{1};
        border_size = 10;
    elseif nargin == 2
        IMG = varargin{1};
        border_size = varargin{2};
    else
        warnig('please enter 1 or 2 arguments');
    end
    
    %check if the input image is grayscale
    if ~(size(IMG, 3)==1)
        warning('image is not gray');
        IMG = rgb2gray(IMG);
    end
    
    imshow(IMG);
    %create the surrounded image
    PAD = zeros(2*border_size+size(IMG,1),2*border_size+size(IMG, 2));
    PAD((border_size+1):(border_size+size(IMG,1)), (border_size+1):(border_size+size(IMG,2))) = IMG;
    PAD = uint8(PAD);
    imshow(PAD);
end