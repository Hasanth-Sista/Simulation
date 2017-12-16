vs=input('vs value');
c=input('c value');
r=input('r value');
num=[vs];
den=[c*r 1];
sys=tf(num,den);
impulse(sys);
