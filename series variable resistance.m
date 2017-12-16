vs=250;
c=12.5e-6;
l=5e-3;
for r=10:20:50;
fr=1/(2*pi*sqrt(l*c));
step=2*fr/500;
f=[0:step:2*fr];
lv=length(f);
for k=1:lv
    xl=(2*pi*f(k)*l*1i);
    xc=1/(2*pi*f(k)*c*1i);
    z(k)=r+(xl-xc);
    current(k)=vs/z(k);
hold on;
end;
plot(f,current)
end;
xlabel('frequency')
ylabel('current')