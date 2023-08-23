function theta_dot = pendulum_ode(t,theta)

%pendulum_Initial_cond;

M = 0.7;        % Mass of the pendulum ball
l = 1;          % Length of the string
g = 9.81;       % Acceleration due to gravity

theta_dot = zeros(2,1);

s = M*theta(1) + theta(2);

u = -sign(s);

theta_dot(1) = theta(2);
theta_dot(2) = -(l/g)*sin(theta(1)) + (1/(M*l*l))*u;

end