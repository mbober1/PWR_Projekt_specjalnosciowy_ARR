

R = 1;
wd = 0.5;

a = sim("nh.slx");

time = a.get('time');
Xd = a.get('Xd');
Yd = a.get('Yd');

plot(Xd, Yd);