% setup file for inverted pendulum on cart
% ref. Balancing of an Inverted Pendulum Using PD Controller
clear all
clc
M = 0.3; % mass of cart [kg]
m = 0.2; % mass of rod [kg]
l = 0.2; % length of the pendulum rod [m]
b = 0.1; % friction of the cart [N/(m*s)]
I = 0.006; % inertia of the pendulum [kg*m^2]
g = 9.8;
q = (m+M)*(I+m*l^2)-(m*l)^2
PHI_U = tf([m*l/q 0],[1 b*(I+m*l*l)/q -(M+m)*m*g*l/q -b*m*g*l/q])
Kp = 10;
Ki = 0;
Kd = 50;

