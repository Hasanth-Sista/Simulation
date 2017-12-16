% get user input
num=input('numerator');
den=input('denominator');
system=tf(num,den);
bode(system)
grid on;
[gm,pm,wcp,wcg]=margin(system);
if(gm<0)!(pm<0)
    disp('system is unstable')
else
    disp('stable')
end

