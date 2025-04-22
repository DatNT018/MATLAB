clear all; close all; clc;
t = 0:0.01:10; x = 4*cos(t); plot(t,x)   % Original signal

N = length(t);                           % Number of samples 
fs = 10; Ts = 1/fs; M = ceil(Ts/0.01);             
% Creating impulse response function
imp = zeros(1,N);   
for k = 1:M:N-1
    imp(k) = 1;
end
x1 = imp.*x; hold on; stem(t,x1)                              


