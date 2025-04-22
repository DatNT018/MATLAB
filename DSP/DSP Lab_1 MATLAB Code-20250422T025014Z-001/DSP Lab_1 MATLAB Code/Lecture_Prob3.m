clear all; close all; clc;
omega_0 = 2*pi; omega_s = 2*pi/3;
% Original Signal
t_max = 15; t = 0:0.01:t_max;
x1_t = cos(omega_0*t); x2_t = cos((omega_0 + omega_s)*t);
% Sample Values
Ts = 2*pi/omega_s; n = 0:1:round(t_max/Ts);
x1_n = cos(omega_0*n*Ts);
x2_n = cos((omega_0 + omega_s)*n*Ts);

figure;
subplot(2,1,1); stem(n*Ts,x1_n,'o'); hold on; plot(t,x1_t);
subplot(2,1,2); stem(n*Ts,x2_n,'o'); hold on; plot(t,x2_t);