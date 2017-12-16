vs=input('vs value');
l=input('l value');
r=input('r value');
num=[vs*l 0];
den=[l r];
sys=tf(num,den);
impulse(sys);
