clear all; close all; clc;
% Sample Values
fs = 5; Ts=1/fs; t_samp = 0:Ts:2; 
x_t_samp = cos(2*pi*t_samp)+cos(8*pi*t_samp)+cos(12*pi*t_samp);  

% Original Signal
t = 0:0.01:2; 
x_t = cos(2*pi*t)+cos(8*pi*t)+cos(12*pi*t);    
figure; stem(t_samp,x_t_samp,'o'); hold on; plot(t,x_t);

% Aliased Signal
ta = 0:0.01:2; xa_t = 3*cos(2*pi*ta); 
plot(ta,xa_t)