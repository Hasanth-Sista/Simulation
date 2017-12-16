vm=input('vm value');
l=input('l value');
r=input('r value');
w=input('w value');
num=[vm*w];
den=[l r l*w*w w*w*r];
sys=tf(num,den);
impulse(sys);
