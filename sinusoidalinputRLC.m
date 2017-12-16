vm=input('vm value');
c=input('c value');
r=input('r value');
w=input('w value');
l=input('l value');
num=[vm*w 0];
den=[l r (1/c)+(l*w*w) (w*w*r) (w*w)/c];
sys=tf(num,den);
impulse(sys);
