tspan1 = [0 10];
tspan2 = [0 300];
I0 = 81.2;
G0 = 6821;
H0 = 682.1;
%Normal iodine input
[t1,y1] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.01 0;0 0.01 -0.1]*y+[150 0 0]', tspan1, [I0 G0 H0]);
[t2,y2] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.01 0;0 0.01 -0.1]*y+[150 0 0]', tspan2, [I0 G0 H0]);
figure;
subplot(1,2,1);
plot(t1,y1);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title('Riggs iodine model for a normal person for 10 days');
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');
subplot(1,2,2);
plot(t2,y2);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title('Riggs iodine model for a normal person for 300 days');
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');
%Low iodine input
[t3,y3] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.01 0;0 0.01 -0.1]*y+[15 0 0]', tspan1, [I0 G0 H0]);
[t4,y4] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.01 0;0 0.01 -0.1]*y+[15 0 0]', tspan2, [I0 G0 H0]);
figure;
subplot(1,2,1);
plot(t3,y3);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title('Riggs iodine model for low iodine input for 10 days');
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');
subplot(1,2,2);
plot(t4,y4);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title('Riggs iodine model for low iodine input for 300 days');
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');
%Hypothyrodism due to autoimmune thyroid disease,k2 is reduced 2 times
[t5,y5] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.005 0;0 0.005 -0.1]*y+[150 0 0]', tspan1, [I0 G0 H0]);
[t6,y6] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.005 0;0 0.005 -0.1]*y+[150 0 0]', tspan2, [I0 G0 H0]);
figure;
subplot(1,2,1);
plot(t5,y5);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title('Iodine model for Hypothyrodism due to autoimmune thyroid disease for 10 days');
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');
subplot(1,2,2);
plot(t6,y6);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title('Iodine model for Hypothyrodism due to autoimmune thyroid disease for 300 days');
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');
%Hypothyrodism due to low iodine intake, B1 is reduced to 10ug
[t7,y7] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.01 0;0 0.01 -0.1]*y+[10 0 0]', tspan1, [I0 G0 H0]);
[t8,y8] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.01 0;0 0.01 -0.1]*y+[10 0 0]', tspan2, [I0 G0 H0]);
figure;
subplot(1,2,1);
plot(t7,y7);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title('Riggs iodine model for hypothyrodism due to low iodine input for 10 days');
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');
subplot(1,2,2);
plot(t8,y8);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title('Riggs iodine model for hypothyrodism due to low iodine input for 300 days');
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');
%Hyperthyrodism due to Goitre,k2 is increased 10 fold B_1 reduced 10 fold
[t11,y11] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.1 0;0 0.1 -0.1]*y+[15 0 0]', tspan1, [I0 G0 H0]);
[t12,y12] = ode23(@(t,y) [-2.52 0 0.08;0.84 -0.1 0;0 0.1 -0.1]*y+[15 0 0]', tspan2, [I0 G0 H0]);
figure;
subplot(1,2,1);
plot(t11,y11);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title("Riggs iodine model for hyperthyrodism due to Goitre for 10 days");
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');
subplot(1,2,2);
plot(t12,y12);
xlabel('Time(Days)');
ylabel('Iodine(ug)');
title("Riggs iodine model for hyperthyrodism due to Goitre for 300 days");
legend('Plasma Iodine', 'Gland iodine','Hormonal Iodine');