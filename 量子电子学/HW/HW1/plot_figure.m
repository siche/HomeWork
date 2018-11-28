
w=@(x)(1+(x/pi).^2).^(0.5);
r=@(x)x.*(1+(pi./x).^2);
t=-10:0.01:10;
figure;
plot(t,w(t));
xlabel('z');
ylabel('\omega');
title('Figure of \omega');

figure;
plot(t,r(t));
xlabel('z');
ylabel('R');
ylim([-100,100]);
title('Figure of R');

