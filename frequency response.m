w=input('enter value');
a=input('enter value');
num=[0 0 w];
den=[1 a w];
system=tf(num,den);

wn=sqrt(w);
zeta=a/(2*wn);

w=linspace(0,2);
u=w/wn;
len=length(u);
for k=1:len
    m(k)=1/sqrt((1-u(k)^2)^2+(2*zeta*u(k))^2);
    phi(k)=-(atan((2*zeta*u(k))/(1-u(k)^2)))*180/pi;
    
end
subplot(2,2,1),plot(w,m);
xlabel('Normalised Frequency'),ylabel('Magnitude')
subplot(2,2,2),plot(w,phi);
xlabel('Normalised Frequency'),ylabel('Phase')

disp('resonant peak is');
mr=1/(2*zeta*sqrt(1-zeta^2));
disp('Resonant frequency in rad/sec');
wr=wn*sqrt(1-2*zeta^2);
wb=wn*sqrt(1-2*zeta^2+sqrt(2-4*zeta^2+4*zeta^4));
pm=180+(atan(2*zeta/sqrt(-2*zeta^2+sqrt(4*zeta^4+1))))*180/pi;

