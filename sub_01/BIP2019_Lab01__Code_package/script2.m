img = imread('input\AlfredoBorba_TuscanLandscape.jpg');
[img_ver, img_hor, img_rot] = flip_and_rotate(img);

subplot(1,3,1);
imshow(img_ver);

subplot(1,3,2);
imshow(img_hor);

subplot(1,3,3);
imshow(img_rot);

