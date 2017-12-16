w=input('enter value');
a=input('enter value');
num=[0 0 w];
den=[1 a w];
system=tf(num,den);
step(system)
wn=sqrt(w);
zeta=a/(2*wn);
wd=wn*sqrt(1-zeta^2);
disp('delay time in seconds is');
td=(1+0.7*zeta)/wd;
disp('rise time is');
theta=atan(sqrt(1-zeta^2)/zeta);
tr=(pi-theta)/wd;
disp('peak time is');
tp=pi/wd;
disp('peak overshoot is');
mp=exp(zeta*pi/(sqrt(1-zeta^2)))*100;
disp('settling time is');
ts=4/(zeta*wn);

