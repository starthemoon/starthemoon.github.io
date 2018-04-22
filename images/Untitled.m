lesson6_2_b = imread('lesson6_2_b.png');
[rows, cols, ~] = size(lesson6_2_b);
for j = 2 : 3
    switch (j)
        case 2
            infix = '1';
        case 3
            infix = '2';
    end
    for i = 1 : j
        switch (i)
            case 1
                postfix = 'a';
            case 2
                postfix = 'b';
            case 3
                postfix = 'c';
        end
        filename = strcat('lesson6_', infix, '_', postfix, '.png');
        tmp = imread(filename);
        tmp = imresize(tmp, [rows, cols]);
        filename = strcat('l', filename);
        imwrite(tmp, filename);
    end
end