function [xt,yt,r,a] = Leastsquarecirclefitting(x,y)

% This method uses the least squares method to fit a circle;
% Note: you need to create a .m file to reference the Leastsquarecirclefitting function
% In the Matlab program, x is the horizontal coordinate vector of the point set to be fitted; y is the vertical coordinate vector of the point set to be fitted (you need to give it yourself)
% (xt, yt) is the coordinate of the center of the fitted circle;
% r is the radius of the fitted circle;

m=length(x);
xx=x.*x;
yy=y.*y;
xy=x.*y;
A=[sum(x) sum(y) m;sum(xy) sum(yy)...
    sum(y);sum(xx) sum(xy) sum(x)];
B=[-sum(xx+yy) ; -sum(xx.*y+yy.*y) ; -sum(xx.*x+xy.*y)];
a=A\B;
xt = -.5*a(1);
yt = -.5*a(2);
r = sqrt((a(1)^2+a(2)^2)/4-a(3));
theta=0:0.1:2*pi;
Circle1=xt+r*cos(theta);
Circle2=yt+r*sin(theta);
hold on;
plot(Circle1,Circle2,'g','linewidth',1);
axis equal

end