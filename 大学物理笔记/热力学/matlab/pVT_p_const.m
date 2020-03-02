clear;
fig = figure;
ax = gca;
an = annotation('textbox',[0.5,0.8,0.1,0.1],'String','pV=RT','fitboxtotext','on');
range = [0,50,0,50,0,70];

title('State Graph');
xlabel('V/m^3');
ylabel('p/Pa');
zlabel('T/K');
axis(ax,range);
view(ax,[0,90]);
hold(ax,'on');

stateface = fimplicit3(@(V,p,T)(p.*V-8.31*T),range,'meshdensity',80,'edgecolor','none');    %绘制气体状态空间
gamma = 1.4;
n=30;

% v = VideoWriter('pVTAnimation_p_const.avi');
% open(v);

for i=1:n
    T1 = 60;
    p1=20;
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %标出点A的位置

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %经过A点的等温线
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %经过A点的绝热线
    
    legend('气体状态曲面','A点');
    
    view(ax,[-90*i/n,90*(1-i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n
    T1 = 60-50*i/n;
    p1=20;
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %标出点A的位置

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %经过A点的等温线
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %经过A点的绝热线
    
    legend('气体状态曲面','A点');
    
    %view(ax,[-90*i/n,90*(1-i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n
    T1 = 10;
    p1=20;
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %标出点A的位置

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %经过A点的等温线
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %经过A点的绝热线
    
    legend('气体状态曲面','A点');
    
    view(ax,[-90+90*i/n,0]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n
    T1 = 10+50*i/n;
    p1=20;
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %标出点A的位置

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %经过A点的等温线
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %经过A点的绝热线
    
    legend('气体状态曲面','A点');
    
    %view(ax,[-90*i/n,90*(1-i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n
    T1 = 60;
    p1=20;
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %标出点A的位置

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %经过A点的等温线
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %经过A点的绝热线
    
    legend('气体状态曲面','A点');
    
    view(ax,[0,90*i/n]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n
    T1 = 60-50*i/n;
    p1=20;
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %标出点A的位置

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %经过A点的等温线
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %经过A点的绝热线
    
    legend('气体状态曲面','A点');
    
    %view(ax,[-90*i/n,90*(1-i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
    if i<n
        delete(point);
        delete(line1);
        delete(line2);
    end
end
% close(v);
