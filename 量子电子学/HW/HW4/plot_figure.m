r=20*1e4;
l=0.78;
d=0:0.1:2*r;

w1=sqrt(l*r/pi*sqrt(d./(2*r-d)));
w0=sqrt(l/pi*sqrt(r*d/2-d.*d/4));

close all;
figure;
plot(d/10000,w0,d/10000,w1);
ylim([0,600]);
xlabel('Mirror separation (cm)');
ylabel('Waist(\mu m)');
text(10,250,'\omega (at mirror)');
text(27,200, '\omega_0 (at center)');
