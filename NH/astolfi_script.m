
a = sim("astolfi.slx");

time = a.get('time');
x1 = a.get('X');
x2 = a.get('Y');
x3 = a.get('Ey');
x4 = a.get('Eo');



figure(1);
hold on;
plot(time, x1);
plot(time, x2);
plot(time, x3);
plot(time, x4);
