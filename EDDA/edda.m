O1 = 3.1;
O2 = 9.5;
O3 = 0.24;
O4 = 0.77;
G = 9.81;


%Kp = 10000000;
%Kd = Kp/10;

K0 = 1;
K1 = 1;



% e11 = a.get('e11');
% e21 = a.get('e21');

Q10_0 = 0;
Q10_1 = 0;
Q20_0 = 0;
Q20_1 = 0;


for Q10_0 = [pi/6, pi/4, pi/2, pi, 2*pi]
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
legend("Q1_0=\pi/6","Q1_0=\pi/4", "Q1_0=\pi/2", "Q1_0=\pi", "Q1_0=2\pi");
Q10_0 = 0;

for Q20_0 = [pi/6, pi/4, pi/2, pi, 2*pi]
    a = sim("exact_linearization_new.slx");

    hold on;
    subplot(2,1,2);
    time = a.get('time');
    e2 = a.get('e2');
    plot(time, e2);
end


title('e_2(t)')
xlabel('t[s]');
legend("Q2_0=\pi/6","Q2_0=\pi/4", "Q2_0=\pi/2", "Q2_0=\pi", "Q2_0=2\pi");
ylabel('e_2[rad]');