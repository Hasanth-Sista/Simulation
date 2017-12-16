%get user input
num=input('enter numerator');
den=input('enter denominator');
system=tf(num,den);
%plotting root locus
rlocus(system);
%stability analysis
[r,k]=rlocus(system);
[m,n]=size(r);
%m is root index and n is gain index
x=0;
for i=1:m
    for j=1:n
    if((r(i,j)~=inf))
        h=real(r(i,j));
        if(h>0)
            x=1;
            break;
        elseif(h==0)
            x=2;
        end
      end;
    end;
end;
if(x==0)
    disp('system is stable');
elseif(x==1)
    disp('system is unstable');
elseif(x==2)
    disp('system is marginally stable');
end;