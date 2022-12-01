% This is the program we use to determine 
% the scale from pixel distance to real world distance

%% read the video
path = '/Users/dengyusong/Documents/MATLAB/INK/RadiusFit/Video/IMG_1636.mov';
vid = VideoReader(path);

I = read(vid, 1);
figure(1);
imshow(I);

%% ask user to select the two points
fprintf('Please select the first point\n');
[x1, y1] = ginput(1);
hold on;
plot(x1, y1, 'y*'); % plot the first point

fprintf('Please select the second point\n');
[x2, y2] = ginput(1);
plot(x2, y2, 'r*'); % plot the second point

hold off;

%% get the scale
real =  2;
scale = real / sqrt((x1 - x2)^2 + (y1 - y2)^2);

save('scale.mat', 'scale');
fprintf('The scale is %f\n', scale);
