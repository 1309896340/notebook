clear;

vgs = 0:0.01:4;
id = 0.5.*(vgs-0.8).^2;
id(vgs<=0.8)=0;
plot(vgs,id,'k','linewidth',2);
xlabel('v_{gs} /V');
ylabel('i_d /mA');
axis([0,4,0,3.5]);