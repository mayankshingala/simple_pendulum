figure(1)
subplot(2,1,1)
plot(t,theta(:,1),'color','r')    %plot(t,theta(:,1),"LineWidth",1,'color','r')
xlabel('Time [sec]');
ylabel('Angular Displacement [rad]');
title('Angular Displacement vs Time');
grid on;
hold on;

subplot(2,1,2)
plot(t,theta(:,2),'-b')
xlabel('Time [sec]');
ylabel('Angular Velocity [rad/sec]');
title('Angular Velocity vs Time');
grid on;
hold off;

figure(2)
plot(theta(:,1),theta(:,2))
xlabel('θ   [rad]');
ylabel('θ dot   [rad/sec]');
title('Controlled pendulum');
grid on;
hold off