r1=10;
r2=12;
d=8;
l=1e-4;

g1=1-d/r1;
g2=1-d/r2;
zr=d*sqrt(g1*g2*(1-g1*g2))/(g1+g2-g1*g2);

z=0:0.001:10;
R=z+zr^2./z;
figure;
plot(z,R);
xlabel('Distance from waist(cm)');
ylabel('R(z)(cm)');
ylim([0,100]);

w=sqrt((l/pi).*(zr+z.*z/zr));
figure;
plot(z,w);
xlabel('Dsitance from waist (cm)');
ylabel('\omega(z) (cm)');
