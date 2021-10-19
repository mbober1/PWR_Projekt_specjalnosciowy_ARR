O1 = 3.1;
O2 = 9.5;
O3 = 0.24;
O4 = 0.77;
G = 9.81;

U1 = 0;
U2 = 0;

Kp = 100000;
Kd = Kp/10;

a = sim("model.slx");

time = a.get('time');
e1 = a.get('e1');
e2 = a.get('e2');

figure(1);
plot(time, e1);

figure(2);
plot(time, e2);