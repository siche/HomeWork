r1=0.95;
rm=r1;
n=8;
t0=n*pi;
t=0:pi/100:t0;

I1=@(x)((r1-rm)^2+4*r1*rm*sin(x/2).^5)./((1-r1*rm)^2+4*r1*rm*sin(x/2).^2);
t1=sqrt(1-r1^2);
I2=@(x)(t1^2./((1-r1*rm)^2+4*r1*rm*sin(x/2).^2));

close all;
figure;
plot(t,I1(t))
xlim([0 n*pi]);
xlabel('\delta');
ylabel('I_r/I_0');
h=plot(t,I1(t));
xlim([0 t0]);
xlabel('\delta');
ylabel('I_r/I_0');
for i=0:8
    str{i+1} = [num2str(i),'\pi'];
end
haxes = get(h,'parent');
set(haxes,'xtick',(0:n).*pi,'xticklabel',str)
set(gca,'fontsize',16,'fontname','Times');

figure;
h=plot(t,I2(t));
xlim([0 t0]);
xlabel('\delta');
ylabel('I_c/I_0');
for i=0:8
    str{i+1} = [num2str(i),'\pi'];
end
haxes = get(h,'parent');
set(haxes,'xtick',(0:n).*pi,'xticklabel',str)
set(gca,'fontsize',16,'fontname','Times');
set(gca,'fontsize',16,'fontname','Times');