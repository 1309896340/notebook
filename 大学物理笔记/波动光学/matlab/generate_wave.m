function [X,Y,Z] = generate_wave(A,u,phi,omega,pos,ran,tt)
%A为振幅，u为波速，phi为初相位，omega为角频率，pos即[x0,y0]为波源位置,ran即[x1,x2]为地平面范围
x0 = pos(1);
y0 = pos(2);
[X,Y] = meshgrid(ran(1):0.05:ran(2));
r = sqrt((X-x0).^2+(Y-y0).^2);
Z = A.*cos(omega.*(tt+r./u)+phi);
end

