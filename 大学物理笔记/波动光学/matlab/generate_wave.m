function [X,Y,Z] = generate_wave(A,u,phi,omega,pos,ran,tt)
%AΪ�����uΪ���٣�phiΪ����λ��omegaΪ��Ƶ�ʣ�pos��[x0,y0]Ϊ��Դλ��,ran��[x1,x2]Ϊ��ƽ�淶Χ
x0 = pos(1);
y0 = pos(2);
[X,Y] = meshgrid(ran(1):0.05:ran(2));
r = sqrt((X-x0).^2+(Y-y0).^2);
Z = A.*cos(omega.*(tt+r./u)+phi);
end

