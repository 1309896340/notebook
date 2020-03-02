clear;
fig = figure;
ax = gca;

grid(ax,'on');
hold(ax,'on');
xlabel("V/m^3");
ylabel("p/Pa");
title("Carnot cycle");
axis(ax,[0,2,0,2]);

C1 = 1;
C2 = 30;

fimplicit(ax,@(V,p)(p.*V-C1),"r","linewidth",2);
%fimplicit(ax,@(V,p)(p.*V-C2),"r","linewidth",1);
fimplicit(ax,@(V,p)(p.*V.^(1.4)-C1),"k","linewidth",2);
%fimplicit(ax,@(V,p)(p.*V.^(1.4)-C2),"g","linewidth",1);
%legend(ax,"pV=10","pV=40","pV^{3}=10","pV^{3}=40");

legend('等温线','绝热线');

a = getframe(gcf);
imwrite(a.cdata,'img5.png');