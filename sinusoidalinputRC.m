vm=input('vm value');
c=input('c value');
r=input('r value');
w=input('w value');
num=[vm*w 0];
den=[r 1/c r*w*w (w*w)/c];
sys=tf(num,den);
impulse(sys);
