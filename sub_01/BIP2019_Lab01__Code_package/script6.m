img_gray = rgb2gray(imread('input\AlfredoBorba_TuscanLandscape.jpg'));
row = 150;

figure;
subplot(2,1,1);
imshow(img_gray);
hold on;
l = line([1,size(img_gray,2)],[row, row], 'Color', 'red');

subplot(2,1,2);
plot(1:1:size(img_gray, 2), img_gray(row,:), 'Color', 'red');
ylabel('pixel intensity value');
xlabel('column index');