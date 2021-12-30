clear all;
close all;

KM = 10;
M11 = 107.9;
M22 = 83.6;

kin = sim("astolfi_kin.slx");
dyn = sim("astolfi_dyn.slx");

time = kin.get('time');
time2 = dyn.get('time');
x1 = kin.get('X');
x2 = kin.get('Y');
x3 = dyn.get('X');
x4 = dyn.get('Y');


figure(1);
hold on;
plot(x1,x2);
plot(x3,x4);


figure(2);
hold on;
plot(time, x1);
plot(time, x2);
plot(time2, x3);
plot(time2, x4);
%legend("X","Y", "Ey", "Eo");
