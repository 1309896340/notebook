clear;

fig = figure;
ax = gca;

x11 = -40;
x22 = 40;

set(fig,'position',[0,0,800,800]);
axis(ax,[x11,x22,x11,x22,-10,10]);
hold(ax,'on');
%grid(ax,'on');
view(ax,[0,45]);
xlabel(ax,'x');
ylabel(ax,'y');
zlabel(ax,'value');
title(ax,'Light Interference');

v = VideoWriter('animation3_2.avi');
open(v);
n = 400;
for i=1:n
    t = - 3*i/n;
    p1 = (x11+4)*(1-i/n)-4;
    p2 = (x22-4)*(1-i/n)+4;
    [X1,Y1,Z1] = generate_wave(3,5,0,4*pi,[0,p1],[x11,x22],t);
    [X2,Y2,Z2] = generate_wave(3,5,0,4*pi,[0,p2],[x11,x22],t);
    ms = mesh(ax,X1+X2,Y1+Y2,Z1+Z2);
    line1 = plot3(ax,[0,0],[p1,p1],[-10,10],'r','linewidth',3);
    line2 = plot3(ax,[0,0],[p2,p2],[-10,10],'r','linewidth',3);
    
    %axis(ax,[x1,x2,x1,x2,-10,10]);
    view(ax,[180*i/n,45]);
    frame = getframe(gcf);
    writeVideo(v,frame);
    delete(ms);
    delete(line1);
    delete(line2);
end

close(v);