function win = create_support_window(img, x, y, ofsize)
    [i,j] = top_left(x, y, ofsize, ofsize);
    [xx, yy, zz] = size(img);
    if i <= ofsize || j <= ofsize || i+ofsize >= xx || j+ofsize >= yy
        img = padarray(img,[ofsize ofsize],'both');
        i = i + ofsize;
        j = j + ofsize;
    end
    win = imcrop(img, [j, i, ofsize, ofsize]);