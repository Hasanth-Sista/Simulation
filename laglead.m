%tf of uncompensated system
den=[1 1 0];
g=tf(10,den);
figure(1);
margin(g);
%get the phase  margin of uncompensated system and design lag
%compensator
[gm pm gf pf]=margin(g);
phc=-180+45+10;
w=logspace(-1,1,100);
[mag,ph]=bode(g,w);
mag=reshape(mag,100,1);
ph=reshape(ph,100,1);
wg=interp1(ph,w,phc);
beta=interp1(ph,mag,phc);
ws=wg/8;
tau=1/ws;
%tf of lag compensator
d=tf([tau,1],[beta*tau,1]);
%bode olot of designed lag compensator
figure(2);
margin(d);
%design the lead compensator

pmax=45-pm+10;
%e is the tolerance value
alpha=(1-sin(pmax*pi/180))/(1+sin(pmax*pi/180));

magdb=20*log10(mag);
magdb=reshape(magdb,100,1);
wm=interp1(magdb,w,-10*log10(1/alpha));
av=1/(wm*sqrt(alpha));
disp('transfer function of lead compensator');
d1=tf([av,1],[alpha*av,1]);
figure(3);
margin(d1);
disp('transfer function of compensated system');
gcom=g*d*d1;
figure(4); 
margin(gcom);
[gmc,pmc,gfc,pfc]=margin(gcom);
