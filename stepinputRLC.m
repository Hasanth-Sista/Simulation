vs=input('vs value');
l=input('l value');
r=input('r value');
c=input('c value');
num=[vs];
den=[l r 1/c];
sys=tf(num,den);
impulse(sys);
