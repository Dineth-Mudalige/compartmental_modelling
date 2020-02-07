%Question 1
tspan = [0 4];
I0 = 0;
G0 = 0;
%For a normal person
%For a step input
[t,y1] = ode23(@(t,y) [-0.8 0.2;-5 -2]*y+[0 1]', tspan, [I0 G0]);
figure;
plot(t,y1(:,1),'--',t,y1(:,2),'-*');
xlabel('Time(Hours)');
ylabel('Insulin(u/kg) & Glucose(g/kg)');
title('Simple glucose model for a normal person for step input');
legend('Insulin', 'Glucose');
%For a delta function
[t,y2] = ode23(@(t,y) [-0.8 0.2;-5 -2]*y+[0 1-sign(t)]', tspan, [I0 G0]);
figure;
plot(t,y2(:,1),'--',t,y2(:,2),'*-');
xlabel('Time(Hours)');
ylabel('Insulin(u/kg) & Glucose(g/kg)');
title('Simple glucose model for a normal person for bolus input');
legend('Insulin', 'Glucose');
%For a diabetic patient
%For a step input
[t,y3] = ode23(@(t,y) [-0.8 0.02;-5 -2]*y+[0 1]', tspan, [I0 G0]);
figure;
plot(t,y3(:,1),'--',t,y3(:,2),'-*');
xlabel('Time(Hours)');
ylabel('Insulin(u/kg) & Glucose(g/kg)');
title('Simple glucose model for a diabetic patient for step input');
legend('Insulin', 'Glucose');
%For a step input with glucose infusion
[t,y3] = ode23(@(t,y) [-0.8 0.02;-5 -2]*y+[0.1 1]', tspan, [I0 G0]);
figure;
plot(t,y3(:,1),'--',t,y3(:,2),'-*');
xlabel('Time(Hours)');
ylabel('Insulin(u/kg) & Glucose(g/kg)');
title('Simple glucose model for a diabetic patient with glucose infusion');
legend('Insulin', 'Glucose');