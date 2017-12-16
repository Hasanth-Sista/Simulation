vs=input('vs value');
c=input('c value');
r=input('r value');
num=[vs];
den=[0 r 1/c];
sys=tf(num,den);
impulse(sys);
