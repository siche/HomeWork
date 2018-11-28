% plot figure for homework 4
r=6e4;
d12=18e4;
d3=7e4;
l=0.74;

g1=1-d12/r;
g2=1-d3/r;
zr1=r*sqrt(g1*g2*(1-g1*g2))/(abs(2*g1));
zr2=r*sqrt(g1*g2*(1-g1*g2))/(abs(2*g2));

zz1=d3/2;
zz2=d3+d12/2;

z1=0:0.1:d3;
z2=d3+0.1:0.1:(d12+d3);

fw1=@(x)sqrt((l/pi)*(zr1+(x-zz1).^2/zr1));
fw2=@(x)sqrt((1/pi)*(zr2+(x-zz2).^2/zr2));
w1=fw1(z1);
w2=fw2(z2);

fr1=@(x)x-zz1+zr1.^2./(x-zz1);
fr2=@(x)x-zz2+zr2.^2./(x-zz2);

r1=fr1(z1);
r2=fr2(z2);

z=[z1,z2]/1e4; 
w=[w1,w2];
R=[r1,r2];

close all
figure;
plot(z1/1e4,w1); hold on;
plot(z2/1e4,w2); hold on;
xlabel('Distance from the reference plane(cm)');
ylabel('Beam size(\mum)');


figure;
plot(z1/1e4,r1); hold on;
plot(z2/1e4,r2); hold on;
xlabel('Distance from the reference plane(cm)');
ylabel('Radius of curvature(\mum)');
ylim([-1e6,1e6]);

figure;
plot(z1/10000,r1);
ylim([-100000,100000]);
