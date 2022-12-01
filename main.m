clc;
close all;
clear;

Path = '/Users/dengyusong/Documents/MATLAB/INK/RadiusFit/Video/IMG_1640.mov';
obj = VideoReader(Path);
num = obj.NumFrames; % Number of frames
load scale.mat

r_array = []; % Radius array

numFrameTarget = 200; % Number of frames to be processed first
I = read(obj, numFrameTarget);
gray = rgb2lab(I); % convert to YCbCr color space
% STOP HERE if you run the program for the first time
% go generate the createmask.m function using colorThresholder app in MATLAB

for i = 100:300
    I = read(obj, i);
    gray = rgb2lab(I); % convert to YCbCr color space
    gray = I;
    [BW,maskedRGBImage] = createMask(I);
    [L,nm] = bwlabel(BW,8);
    stats = regionprops(BW,'Area','BoundingBox');
    area = cat(1,stats.Area);
    [a,index] = max(area);
    bw1 = (L==index);
    se = strel('disk',3);
    bw2 = imfill(bw1, "holes");

    edgeimage = edge(bw2,'Canny'); % or edgeimage = edge(bw2,'Sobel');
    [r,c] = find(edgeimage==1);
    figure(1)
    imshow(I)
    hold on
    % Fit a circle using least squares fit

    [xc,yc,r,a] = Leastsquarecirclefitting(c,r);
    r = r*scale;
    r_array = [r_array, r];
    hold off;
end

writematrix(r_array,'DataStorage/Radius.xlsx')

