function [row, col] = top_left(x, y, horizontal, vertical)
    top = floor(y - vertical/2);
    left = floor(x - horizontal/2);
    col=left;
    row=top;
