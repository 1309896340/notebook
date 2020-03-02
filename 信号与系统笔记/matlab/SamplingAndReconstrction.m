clear;
figure;

%F = @(ome)( 1./(ome.*pi).*(1-cos(ome)) );
F1 = @(ome)( 1./(2*ome.*pi).*sin(ome) );
F2 = @(ome)( 1./(2*ome.*pi).*(cos(ome)-1) );

%生成对频谱的采样点
%从-k取到k,以dk为步长
k = 100;
dk = 0.4;
%经过测试发现只要dk满足0<dk<1，无论取值多少，得到波形是一样的
%猜测可能和“奈奎斯特采样定理”有关

t = -3:0.01:3;              %建立新时间坐标轴，范围为[-3,3]
y = zeros(1,numel(t));      %初始化

%将各个频率的分量累加起来，cos前的为偶分量，sin为奇分量
%由于是非周期信号的合成，k越大频率构成越完整越接近原始波形
ki = -k;
while ki < k
    
    y = y + dk*(F1(ki)*cos(ki*t)+F2(ki)*sin(ki*t));
    ki = ki + dk;
end

plot(t,y);
grid on;