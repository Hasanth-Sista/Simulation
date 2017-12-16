vs=input('vs value');
l=input('l value');
r=input('r value');
num=[vs];
den=[l r 0];
sys=tf(num,den);
impulse(sys);
