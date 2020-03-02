clear;
fig = figure;
ax = gca;
an = annotation('textbox',[0.5,0.85,0.05,0.05],'String','pV=RT','fitboxtotext','on');
range = [0,50,0,100,0,70];
gamma = 3;

%���ݷֱ�Ϊ[V,p,T]
status = [7,70,7*70/8.31];

set(fig,'position',[200,100,800,600]);
title('State Graph');
xlabel('V/m^3');
ylabel('p/Pa');
zlabel('T/K');
axis(ax,range);
view(ax,[0,90]);
hold(ax,'on');

stateface = fimplicit3(@(V,p,T)(p.*V-8.31*T),range,'meshdensity',80,'edgecolor','none');    %��������״̬�ռ�
n=100;

v = VideoWriter('pVTAnimation.avi');
open(v);

for i=1:n                   %״̬1�ӽ�ת��
    T1 = status(3);       
    p1 = status(2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1,'r.','markersize',20);           %�����A��λ��

    p = linspace(0,range(4),300);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C3 = p1^(gamma-1)*T1^(-gamma);
    T = ((p.^(gamma-1))/C3).^(1/gamma);
    line2 = plot3(8.31*T./p,p,T,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    view(ax,[-90*sin(pi/2*i/n),50*sin(pi*i/n)]);
    
%     drawnow;
    writeVideo(v,getframe(gcf));
%     if i<n
        %delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n                   %1->2״̬����
    T1 = status(3);
    status(2) = status(2) - 27*1/n;        %���½�ѹ 
    p1 = status(2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1,'r.','markersize',20);           %�����A��λ��

    p = linspace(0,range(4),300);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C3 = p1^(gamma-1)*T1^(-gamma);
    T = ((p.^(gamma-1))/C3).^(1/gamma);
    line2 = plot3(8.31*T./p,p,T,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    %view(ax,[-90*i/n,90*(1-i/n)]);
    
%     drawnow;
    writeVideo(v,getframe(gcf));
%     if i<n
        %delete(point);
        delete(line1);
        delete(line2);
%     end
end

C3 = p1^(gamma-1)*T1^(-gamma);
for i=1:n                   %2->3״̬����
    status(3) = status(3) - 40*1/n;     %������ȴ
    T1 = status(3);
    status(2) = (C3/(T1^(-gamma)))^(1/(gamma-1));
    p1 = status(2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1,'r.','markersize',20);           %�����A��λ��

    p = linspace(0,range(4),300);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C3 = p1^(gamma-1)*T1^(-gamma);
    T = ((p.^(gamma-1))/C3).^(1/gamma);
    line2 = plot3(8.31*T./p,p,T,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    %view(ax,[-90*i/n,90*(1-i/n)]);
    
%     drawnow;
    writeVideo(v,getframe(gcf));
%     if i<n
        %delete(point);
        delete(line1);
        delete(line2);
%     end
end

% view(ax,[0,90]);

for i=1:n                   %3->4״̬����
    T1 = status(3);
    status(2) = status(2) + 5*1/n;        %������ѹ 
    p1 = status(2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1,'r.','markersize',20);           %�����A��λ��

    p = linspace(0,range(4),300);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C3 = p1^(gamma-1)*T1^(-gamma);
    T = ((p.^(gamma-1))/C3).^(1/gamma);
    line2 = plot3(8.31*T./p,p,T,'w','linewidth',2);             %����A��ľ�����
    
    legend('����״̬����','A��');
    
    view(ax,[-90+90*sin(pi/2*i/n),90*sin(pi/2*i/n)]);
    
%     drawnow;
    writeVideo(v,getframe(gcf));
%     if i<n
        %delete(point);
        delete(line1);
        delete(line2);
%     end
end

C3 = p1^(gamma-1)*T1^(-gamma);
for i=1:n                   %4->1״̬����
    status(3) = status(3) + 40*1/n;     %��������
    T1 = status(3);
    status(2) = (C3/(T1^(-gamma)))^(1/(gamma-1));
    p1 = status(2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1,'r.','markersize',20);           %�����A��λ��

    p = linspace(0,range(4),300);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C3 = p1^(gamma-1)*T1^(-gamma);
    T = ((p.^(gamma-1))/C3).^(1/gamma);
    line2 = plot3(8.31*T./p,p,T,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    %view(ax,[-50*sin(pi*i/n),90*i/n]);
    
%     drawnow;
    writeVideo(v,getframe(gcf));
    if i<n
        %delete(point);
        delete(line1);
        delete(line2);
    end
end

close(v);
