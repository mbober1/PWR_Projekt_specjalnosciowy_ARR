

R = 1;
wd = 0.5;
K1 = 1;
K2 = 1;


KM = 1;
M11 = 107.9;
M22 = 83.6;

% kin = sim("nh.slx");
% dym = sim("dynamiczny.slx");

% Xd = kin.get('Xd');
% Yd = kin.get('Yd');
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


for KM = [1, 5, 10, 20]
    dym = sim("dynamiczny.slx");

    hold on;
    time_dym = dym.get('time');
%     X_dym = dym.get('X');
%     Y_dym = dym.get('Y');
    Ex_dym = dym.get('Ex');
%     Ey_dym = dym.get('Ey');
%     Eo_dym = dym.get('Eo');
    plot(time_dym, Ex_dym);
%     plot(time_dym, Ey_dym);
%     plot(time_dym, Eo_dym);
end

% figure(1);
% hold on;
% plot(time_kin, Ex_kin, 'r-');
% plot(time_kin, Ey_kin, 'g-');
% plot(time_kin, Eo_kin, 'b-');
% plot(time_dym, Ex_dym, 'r--');
% plot(time_dym, Ey_dym, 'g--');
% plot(time_dym, Eo_dym, 'b--');

title('Błędy sterowania E_x');
xlabel('t[s]');
ylabel('e[rad]');
legend("K_M=1","K_M=5","K_M=10","K_M=20");



% figure(2);
% hold on;
% plot(Xd, Yd, 'b.');
% plot(X_kin, Y_kin, 'r--');
% plot(X_dym, Y_dym, 'g--');
% 
% title('Trajektoria');
% xlabel('x');
% ylabel('y');
% legend("referencyjna","kinematyczny", "kinematyczny+dynamiczny");
