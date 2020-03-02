clear;

ome = -10:0.01:10;
A = 1./(ome.*pi).*(1-cos(ome));

plot(ome,A);
title('Ƶ��ͼ');
xlabel('\omega');
ylabel('|F(\omega)|');
grid on;

fig = getframe(gcf);
imwrite(fig.cdata,'freqCurl.png');