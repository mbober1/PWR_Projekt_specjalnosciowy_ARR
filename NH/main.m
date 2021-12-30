close all;
clear all;

R = 1;
wd = 0.5;
K1 = 1;
K2 = 1;


KM = 1;
M11 = 107.9;
M22 = 83.6;

x0 = 0;
y0 = 0;
o0 = 0.01;

% kin = sim("nh.slx");
dym = sim("dynamiczny.slx");

    hold on;
Xd = dym.get('Xd');
Yd = dym.get('Yd');
plot(Xd, Yd, 'b.');
% 
% time_kin = kin.get('time');
% X_kin = kin.get('X');
% Y_kin = kin.get('Y');
% Ex_kin = kin.get('Ex');
% Ey_kin = kin.get('Ey');
% Eo_kin = kin.get('Eo');
% 
% time_dym = dym.get('time');
% X_dym = dym.get('X');
% Y_dym = dym.get('Y');
% Ex_dym = dym.get('Ex');
% Ey_dym = dym.get('Ey');
% Eo_dym = dym.get('Eo');


for o0 = [pi/6, pi/4, pi/2, pi, 2*pi]
    dym = sim("dynamiczny.slx");
    %kin = sim("nh.slx");

    hold on;
    time_dym = dym.get('time');
    X_dym = dym.get('X');
    Y_dym = dym.get('Y');
%     X_kin = kin.get('X');
%     Y_kin = kin.get('Y');
%     Ex_dym = dym.get('Ex');
     %Ey_dym = dym.get('Ey');
     %Eo_dym = dym.get('Eo');
%     plot(time_dym, Ex_dym);
%     plot(time_dym, Ey_dym);
%     plot(time_dym, Eo_dym);
plot(X_dym, Y_dym, '--');
%plot(X_kin, Y_kin, '-');
end

% figure(1);
% hold on;
% plot(time_kin, Ex_kin, 'r-');
% plot(time_kin, Ey_kin, 'g-');
% plot(time_kin, Eo_kin, 'b-');
% plot(time_dym, Ex_dym, 'r--');
% plot(time_dym, Ey_dym, 'g--');
% plot(time_dym, Eo_dym, 'b--');

% title('Błędy sterowania E_x');
% xlabel('t[s]');
% ylabel('e[rad]');
% legend("Q1_0=\pi/6","Q1_0=\pi/4", "Q1_0=\pi/2", "Q1_0=\pi", "Q1_0=2\pi");


% figure(2);
% hold on;
% plot(Xd, Yd, 'b.');
% plot(X_kin, Y_kin, 'r--');
% plot(X_dym, Y_dym, 'g--');
% 
title('Trajektoria');
xlabel('x');
ylabel('y');
legend("referencyjna","\theta_0=\pi/6","\theta_0=\pi/4", "\theta_0=\pi/2", "\theta_0=\pi", "\theta_0=2\pi");
