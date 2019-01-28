clear all
close all
clc

im = double(imread('smile.png'));

tform1 = affine2d([1 0 0; 0 1 0; 4 -5 1]);
tform2 = affine2d([1 0 0; 0 2 0; 0 0 1]);
tform3 = affine2d([-1 0 0; 0 1 0; -4 2 1]);

first = imwarp(im, tform1);
second = imwarp(first, tform2);
third = imwarp(second, tform3);
[row_im, column_im] = size(third);

figure
set (gcf,'Color',[1 1 1])

for x = 1:column_im
    for y = 1:row_im
        if third(y,x) ~= 0
            plot3(x,y,1,'w.')
            grid on
        else
            plot3(x,y,1,'k.')
        end
        hold on
        drawnow
    end
end
