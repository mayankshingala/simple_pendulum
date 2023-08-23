%% MATLAB Code for the Main Function

clear all
close all
clc

t = 0:0.01:10;
theta_0 = [1 0];        % Initial condition: (Angular displacement = 1, Angular velocity = 0)

[t,theta] = ode45('pendulum_ode',t,theta_0);

pendulum_plot;
pendulum_animation;