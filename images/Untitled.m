filename = strcat('lesson6_1_a.png');
tmp = imread(filename);
tmp = imresize(tmp, [843, 980]);
filename = strcat('l', filename);
imwrite(tmp, filename);