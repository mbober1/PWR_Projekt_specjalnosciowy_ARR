clear all;
close all;

T = 10;

x10 = 1;
x20 = 2;
x30 = 3;

x1T = 3;
x2T = 4;
x3T = 8;
xT = [x2T; x3T];

b_0 = (x1T-x10)/T;

N = [T 0.5 * T^2; b_0 * 0.5 * T^2 b_0 / 6 * T^3];

x0 = [x20; x30 + x20 * b_0 * T];
c = inv(N) * (xT-x0);
u1 = (x1T - x10)/T;
sym = sim("nakamura_1.slx", T);

figure(1);
hold on;
plot(sym.time, sym.x1);
plot(sym.time, sym.x2);
plot(sym.time, sym.x3);