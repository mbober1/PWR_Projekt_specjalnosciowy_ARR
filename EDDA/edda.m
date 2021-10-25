O1 = 3.1;
O2 = 9.5;
O3 = 0.24;
O4 = 0.77;
G = 9.81;


Kp = 10000000;
Kd = Kp/10;

K0 = 1;
K1 = 1;

a = sim("qui_dorsey.slx");

time = a.get('time');
e1 = a.get('e1');
e2 = a.get('e2');

e11 = a.get('e11');
e21 = a.get('e21');

subplot(2,1,1);
plot(time, e1);
title('e_1(t)');
xlabel('t[s]');
ylabel('e_1[rad]');

subplot(2,1,2);
plot(time, e2);
title('e_2(t)')
xlabel('t[s]');
ylabel('e_2[rad]');