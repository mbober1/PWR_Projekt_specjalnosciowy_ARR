

R = 1;
wd = 0.5;
K1 = 1;
K2 = 1;


KM = 10;
M11 = 107.9;
M22 = 83.6;


%a = sim("nh.slx");
a = sim("dynamiczny.slx");

time = a.get('time');
Xd = a.get('Xd');
Yd = a.get('Yd');
X = a.get('X');
Y = a.get('Y');
Ex = a.get('Ex');
Ey = a.get('Ey');
Eo = a.get('Eo');


figure(1);
hold on;
plot(time, Ex);
plot(time, Ey);
plot(time, Eo);

figure(2);
hold on;
plot(Xd, Yd);
plot(X, Y);

