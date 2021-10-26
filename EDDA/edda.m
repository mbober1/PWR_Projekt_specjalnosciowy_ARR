O1 = 3.1;
O2 = 9.5;
O3 = 0.24;
O4 = 0.77;
G = 9.81;


%Kp = 10000000;
%Kd = Kp/10;

K1 = 1;



% e11 = a.get('e11');
% e21 = a.get('e21');



for K0 = 1:10:30
    a = sim("exact_linearization_new.slx");

    hold on;
    subplot(2,1,1);
    time = a.get('time');
    e1 = a.get('e1');
    plot(time, e1);
end

title('e_1(t)');
xlabel('t[s]');
ylabel('e_1[rad]');
legend('K0=1','K0=10', 'K0=20')


for K0 = 1:10:30
    a = sim("exact_linearization_new.slx");

    hold on;
    subplot(2,1,2);
    time = a.get('time');
    e2 = a.get('e2');
    plot(time, e2);
end


title('e_2(t)')
xlabel('t[s]');
legend('K0=1','K0=10', 'K0=20')
ylabel('e_2[rad]');