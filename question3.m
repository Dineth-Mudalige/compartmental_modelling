t=linspace(0,5);
g = 0.4.*sign(t)+2.2.*exp(-1.4*t).*sin(0.2.*t)-0.4.*exp(-1.4.*t).*cos(0.2.*t);
I = 0.1.*sign(t)-0.7.*exp(-1.4*t).*sin(0.2.*t)-0.1.*exp(-1.4.*t).*cos(0.2.*t);
figure;
plot(t,g,"--",t,I,"--");
xlabel('Time(Hours)');
ylabel('Insulin(u/kg) & Glucose(g/kg)');
title("Boiles'plasma-glucose model");
legend('Glucose','Insulin');