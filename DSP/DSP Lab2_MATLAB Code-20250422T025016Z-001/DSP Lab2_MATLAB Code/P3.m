clc, clear, close all;
B = input("Number of bits:")
R = input("Full-scale range:")
% Original Signal
t = 0:0.01:1; x=(R/2)*cos(4*pi*t);

% Sampling 
fs = 100; Ts = (1/fs); n = 0:(1/Ts);
x_s = (R/2)*cos(4*pi*n*Ts);
figure; plot(t,x); hold on; grid on; stem(n*Ts,x_s,'o');
title("Original Signal versus Sampled Signal")

for k = 1:length(x_s)
   x_q(k) = quantizer_p3(x(k),R,B);
end 
figure; plot(t,x); hold on; stem(t,x_q);
title("B = 4, R = 10, x(t) = 5cos(4*pi*t)")