Vll=input('Suppy Voltage (line to line) RMS value @ 50 Hz: ');
f2=input('Enter the second frequency: ');
f3=input('Enter the third frequency: ');
f4=input('Enter the fourth frequency: ');
f5=input('Enter the fifth frequency: ');
P=input('Enter the number of poles: ');
Rs=input('Stator Resistance: ');
Rr=input('Rotor Resistance: ');
Xs=input('Stator Leakage Reactance @ 50 Hz frequecny: ');
Xr=input('Rotor Leakage Reactance @ 50 Hz frequecny: ');
Ls=Xs/(2*pi*50);
Lr=Xr/(2*pi*50);
Vlnf1=Vll/(3^0.5);
Vlnf2=Vlnf1*f2/50;
Vlnf3=Vlnf1*f3/50;
Vlnf4=Vlnf1*f4/50;
Vlnf5=Vlnf1*f5/50;
Wsync1=4*pi*50/P;
Wsync2=4*pi*f2/P;
Wsync3=4*pi*f3/P;
Wsync4=4*pi*f4/P;
Wsync5=4*pi*f5/P;

m=1;
for Wrotor1=0:0.002:Wsync1
Tmf1(m)=(3*(((Vlnf1^2)*Rr/((Wsync1-Wrotor1)/Wsync1))/((Rs+Rr/((Wsync1-Wrotor1)/Wsync1))^2+(2*pi*50*Ls+2*pi*50*Lr)^2))/Wsync1); %star connected
m=m+1;
end
m=1;
for Wrotor2=0:0.002:Wsync2
Tmf2(m)=(3*(((Vlnf2^2)*Rr/((Wsync2-Wrotor2)/Wsync2))/((Rs+Rr/((Wsync2-Wrotor2)/Wsync2))^2+(2*pi*f2*Ls+2*pi*f2*Lr)^2))/Wsync2);
m=m+1;
end
m=1;
for Wrotor3=0:0.002:Wsync3
Tmf3(m)=(3*(((Vlnf3^2)*Rr/((Wsync3-Wrotor3)/Wsync3))/((Rs+Rr/((Wsync3-Wrotor3)/Wsync3))^2+(2*pi*f3*Ls+2*pi*f3*Lr)^2))/Wsync3);
m=m+1;
end
m=1;
for Wrotor4=0:0.002:Wsync4
Tmf4(m)=(3*(((Vlnf4^2)*Rr/((Wsync4-Wrotor4)/Wsync4))/((Rs+Rr/((Wsync4-Wrotor4)/Wsync4))^2+(2*pi*f4*Ls+2*pi*f4*Lr)^2))/Wsync4);
m=m+1;
end
m=1;
for Wrotor5=0:0.002:Wsync5
Tmf5(m)=(3*(((Vlnf5^2)*Rr/((Wsync5-Wrotor5)/Wsync5))/((Rs+Rr/((Wsync5-Wrotor5)/Wsync5))^2+(2*pi*f5*Ls+2*pi*f5*Lr)^2))/Wsync5);
m=m+1;
end
plot(Tmf1);
hold on;
plot(Tmf2);
plot(Tmf3);
plot(Tmf4);
plot(Tmf5);
hold off;
ylabel('Torque(N-m)');
xlabel('Rotor Speed(Rad/s) * 100');