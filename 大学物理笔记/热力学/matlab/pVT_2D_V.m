clear;
fig = figure;
ax = gca;
an = annotation('textbox',[0.5,0.8,0.1,0.1],'String','pV=RT','fitboxtotext','on');
range = [0,50,0,50];

title('State Graph');
xlabel('V/m^3');
ylabel('p/Pa');
zlabel('T/K');
axis(ax,range);
%view(ax,[0,90]);
grid(ax,'on');
hold(ax,'on');

%stateface = fimplicit3(@(V,p,T)(p.*V-8.31*T),range,'meshdensity',80,'edgecolor','none');    %绘制气体状态空间
gamma = 1.4;
n=30;

for i=1:n
    V1 = 10+30*i/n;
    p1 = 10;
    T1 = p1*V1/8.31;
    
    point = plot(V1,p1,'r.','markersize',30);           %标出点A的位置

    p = linspace(range(3),range(4),200);
    V = T1*8.31./p;
    line1 = plot(V,p,'g','linewidth',2);                %经过A点的等温线
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot(V,p,'k','linewidth',2);                %经过A点的绝热线
    
    legend('A点','等温线',' 绝热线');
    
    drawnow;
    
%      if i<n
        delete(point);
        delete(line1);
        delete(line2);
%      end
end

for i=1:n
    V1 = 40-30*i/n;
    p1 = 10;
    T1 = p1*V1/8.31;
    
    point = plot(V1,p1,'r.','markersize',30);           %标出点A的位置

    p = linspace(range(3),range(4),200);
    V = T1*8.31./p;
    line1 = plot(V,p,'g','linewidth',2);                %经过A点的等温线
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot(V,p,'k','linewidth',2);                %经过A点的绝热线
    
    legend('A点','等温线',' 绝热线');
    
    drawnow;
    
     if i<n
        delete(point);
        delete(line1);
        delete(line2);
     end
end
