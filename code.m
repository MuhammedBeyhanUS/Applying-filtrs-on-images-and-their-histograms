  i=imread('img.jpg');
g=rgb2gray(i);
imshow(g);
saveas(gcf,'grayscale_image.png');
g1=imadjust(g);
g2=histeq(g);
g3=adapthisteq(g);
g4=imcomplement(g);
montage({i,g,g4,g1,g2,g3},'Size',[1 6])
title("Original Image and Grayscale and nagetive of the grayscale image and Enhanced Images using imadjust, histeq, and adapthisteq.")
figure('Name','histogram of imadjust image');
imshow(g1);
saveas(gcf,'transformed_image_1.png');
hold on;
g1h=imhist(g1);
figure('Name','histogram of imadjust image');
ax1 = axes('Position',[0.5 0.5 0.4 0.4]);
plot(g1h);
hold off;

figure('Name','histogram of histeq image'); 
imshow(g2);
saveas(gcf,'transformed_image_2.png');
hold on;
g2h=imhist(g2);
figure('Name','histogram of histeq image');
ax2 = axes('Position',[0.5 0.5 0.4 0.4]);
plot(g2h);
hold off;


figure('Name','adapthisteq image');
imshow(g3);
saveas(gcf,'transformed_image_3.png');
hold on;
g3h=imhist(g3);
figure('Name','histogram of adapthisteq image');
ax3 = axes('Position',[0.5 0.5 0.4 0.4]);
plot(g3h);
hold off;

figure('Name','imcomplement image');
imshow(g4);
saveas(gcf,'transformed_image_4.png');
hold on;
g4h=imhist(g4);
figure('Name','histogram of imcomplement image');
ax4 = axes('Position',[0.5 0.5 0.4 0.4]);
plot(g4h);
hold off;


