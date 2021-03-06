den=[1 1 0];
g=tf(10,den);
figure(1);
margin(g);
[gm pm gf pf]=margin(g);
e=10;
pmax=45-pm+e;
alpha=(1-sin(pmax*pi/180))/(1+sin(pmax*pi/180));
w=logspace(-1,1,100);
[mag,ph]=bode(g,w);
magdb=20*log10(mag);
magdb=reshape(magdb,100,1);
wm=interp1(magdb,w,-10*log10(1/alpha));
tau=1/(wm*sqrt(alpha));
d=tf([tau 1],[alpha*tau 1]);
figure(2);
margin(d);
gcomp=g*d;
figure(3);
margin(gcomp);
[gmc pmc gfc pfc]=margin(gcomp);
