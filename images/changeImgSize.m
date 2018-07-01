infileprefix = 'lesson16_';

for i = 1 : 4
    switch(i)
        case 1
            infile = strcat(infileprefix, 'class.JPG');
        case 2
            infile = strcat(infileprefix, 'package.JPG');
        case 3
            infile = strcat(infileprefix, 'sequence.JPG');
        case 4
            infile = strcat(infileprefix, 'usecase.JPG');
    end
    img = imread(infile);
    [row, col, ~] = size(img);
    prop = 960 / col;
    row = prop * row;
    img = imresize(img, [row, NaN]);
    outfile = strcat('l', infile);
    imwrite(img, outfile);
end