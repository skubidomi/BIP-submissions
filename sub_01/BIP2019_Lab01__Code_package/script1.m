img = imread('input\AlfredoBorba_TuscanLandscape.jpg');
imshow(img);
isColor = 3 == size(img, 3);
img_gray = rgb2gray(img);
figure;
imshow(img_gray);
imwrite(img_gray, 'output\AlfredoBorba_TuscanLandscape_GRAY.jpg');