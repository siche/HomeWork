
d=-10:00.01:10;
r=0.99;
y=1/6*sin(d)./((1-r^2)^2+4*r^2*sin(d/2).^2);
figure;
plot(d,y);
xlabel('\delta(radians)');
ylabel('Polarization signal(arb)');
