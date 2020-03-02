clear;
fig = figure;
ax = gca;
an = annotation('textbox',[0.5,0.7,0.2,0.2],'fitboxtotext','on','String','\gamma');

v = VideoWriter('heat.avi');
open(v);

n=80;
for i=1:n
    cla(ax,'reset');
    grid(ax,'on');
    hold(ax,'on');
    xlabel(ax,'V/m^3');
    ylabel(ax,'p/Pa');
    title(ax,'HeatCapRatio Changing Animation');
    axis(ax,[0,4,0,10]);
    
    dgm = i/n;
    fimplicit(ax,@(p,V)(p.*V.^(1+dgm)-1),"r","linewidth",2);
    fimplicit(ax,@(p,V)(p.*V.^(1+dgm)-2),"y","linewidth",2);
    fimplicit(ax,@(p,V)(p.*V.^(1+dgm)-4),"b","linewidth",2);
    fimplicit(ax,@(p,V)(p.*V.^(1+dgm)-8),"g","linewidth",2);
    fimplicit(ax,@(p,V)(p.*V.^(1+dgm)-16),"c","linewidth",2);
    set(an,'String',['\gamma ',num2str(1+dgm,'= %.2f ')]);
    legend('pV^{\gamma}=1','pV^{\gamma}=2','pV^{\gamma}=4','pV^{\gamma}=8','pV^{\gamma}=16');
    writeVideo(v,getframe(gcf));
    %drawnow;
end

close(v);
