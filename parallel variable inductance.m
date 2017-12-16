vs=200;
r1=20;
r=40;
c=0.001;
for l=1:10;
fr=1/(2*pi*sqrt(l*c));
step=2*fr/500;
f=[0:step:2*fr];
lv=length(f);
for k=1:lv
    xl=r1+(2*pi*f(k)*l*1i);
    xc=1/(2*pi*f(k)*c*1i);
    x=xl*xc/(xl+xc);
    z(k)=r+x;
    current(k)=vs/z(k);
hold on;
end;
plot(f,current)
end;
xlabel('frequency')
ylabel('current')
