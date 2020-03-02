clear;
fig = figure;
ax = gca;
an = annotation('textbox',[0.5,0.8,0.05,0.05],'String','pV=RT','fitboxtotext','on');
range = [0,50,0,50,0,70];

%���ݷֱ�Ϊ[V,p,T]
status = zeros(4,3);
status(1,:)=[0,15,10];
status(2,:)=[0,35,10];
status(3,:)=[0,35,40];
status(4,:)=[0,15,40];
for i=1:4                                   %����ɼ������ɣ����Ӿ�ȷ
    status(i) = 8.31*status(3)/status(2);
end

title('State Graph');
xlabel('V/m^3');
ylabel('p/Pa');
zlabel('T/K');
axis(ax,range);
view(ax,[0,90]);
hold(ax,'on');

stateface = fimplicit3(@(V,p,T)(p.*V-8.31*T),range,'meshdensity',80,'edgecolor','none');    %��������״̬�ռ�
gamma = 1.4;
n=30;

% v = VideoWriter('pVTAnimation.avi');
% open(v);

for i=1:n                   %״̬1�ӽ�ת��
    T1 = status(1,3);       
    p1 = status(1,2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %�����A��λ��

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    view(ax,[-90*sin(pi/2*i/n),50*sin(pi*i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n                   %1->2״̬����
    T1 = status(1,3);
    p1 = (status(2,2)-status(1,2))*i/n + status(1,2);           %1->2״̬����
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %�����A��λ��

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    %view(ax,[-90*i/n,90*(1-i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n                   %״̬2�ӽ�ת��
    T1 = status(2,3);
    p1 = status(2,2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %�����A��λ��

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    view(ax,[-90*cos(pi/2*i/n),50*sin(pi*i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n                   %2->3״̬����
    T1 = (status(3,3)-status(2,3))*i/n + status(2,3);
    p1 = status(2,3);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %�����A��λ��

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    %view(ax,[-90*i/n,90*(1-i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n                   %״̬3�ӽ�ת��
    T1 = status(3,3);
    p1 = status(3,2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %�����A��λ��

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    view(ax,[-90*sin(pi/2*i/n),50*sin(pi*i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n                   %3->4״̬����
    T1 = status(3,3);
    p1 = (status(4,3)-status(3,3))*i/n + status(3,3);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %�����A��λ��

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    %view(ax,[-90*i/n,90*(1-i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n                   %״̬4�ӽ�ת��
    T1 = status(4,3);
    p1 = status(4,2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %�����A��λ��

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    view(ax,[-90*cos(pi/2*i/n),50*sin(pi*i/n)]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
%     if i<n
        delete(point);
        delete(line1);
        delete(line2);
%     end
end

for i=1:n                   %4->1״̬����
    T1 = (status(1,3)-status(4,3))*i/n + status(4,3);
    p1 = status(4,2);
    V1 = 8.31*T1/p1;
    
    point = plot3(V1,p1,T1+0.5,'r.','markersize',30);           %�����A��λ��

    p = linspace(0,50,200);
    V = T1*8.31./p;
    line1 = plot3(V,p,T1*ones(numel(p)),'g','linewidth',2);     %����A��ĵ�����
 
    C1 = p1*V1^gamma;
    C3 = p1^(gamma-1)*V1^(-gamma);
    V = (C1./p).^(1/gamma);
    line2 = plot3(V,p,p.*V./8.31,'w','linewidth',2);            %����A��ľ�����
    
    legend('����״̬����','A��');
    
    %view(ax,[-50*sin(pi*i/n),90*i/n]);
    
    drawnow;
%     writeVideo(v,getframe(gcf));
    if i<n
        delete(point);
        delete(line1);
        delete(line2);
    end
end

% close(v);
