clc;
clear;
n = input('Number of points:'); %total points to be plotted for square
%side of the square considered is 1 and radius of the circle is 0.5
x = rand(n,1); %x co-ordinates of n points
y = rand(n,1); %y co-ordinates of n points
figure('color','white');
hold all
axis square;
% centre of the circle to be inscribed is (0.5,0.5)
x1 = x-0.5;
y1 = y-0.5;
r = x1.^2+y1.^2; %r is the square of radius of the circle
m=0; %points inside circle
for i = 1:n
    if r(i)<=0.25 %r=radius square=0.5^2=0.25
        m = m+1;
        plot(x(i),y(i),'b.');
    else
        plot(x(i),y(i),'r.');
    end
end
pi = 4*m/n %ratio of area of circle to area of square is pi/4