clear;
fig = figure;
ax = gca;
an = annotation('textbox',[0.5,0.7,0.2,0.2],'fitboxtotext','on','String',"T");

v=VideoWriter('temp.avi');
open(v);

n=80;
for i=1:n
    cla(ax,'reset');
    
    grid(ax,'on');
    hold(ax,'on');
    xlabel(ax,'V/m^3');
    ylabel(ax,'p/Pa');
    title(ax,'Temperature Changing Animation');
    axis(ax,[0,20,0,7]);
    
    T = 10^(1.5*i/n);
    fimplicit(ax,@(p,V)(p.*V.^(1)-T),"r","linewidth",2);
    fimplicit(ax,@(p,V)(p.*V.^(2)-T),"y","linewidth",2);
    fimplicit(ax,@(p,V)(p.*V.^(3)-T),"b","linewidth",2);
    fimplicit(ax,@(p,V)(p.*V.^(4)-T),"g","linewidth",2);
    fimplicit(ax,@(p,V)(p.*V.^(5)-T),"c","linewidth",2);
    set(an,'String',num2str(T,"T = %.2f "));
    legend(ax,"pV^{1}=T","pV^{2}=T","pV^{3}=T","pV^{4}=T","pV^{5}=T");
    %drawnow;
    frame = getframe(gcf);
    writeVideo(v,frame);
end

close(v);
