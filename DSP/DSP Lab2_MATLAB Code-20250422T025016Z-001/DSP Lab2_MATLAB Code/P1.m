clc, clear, close all
% Original Signal
t = 0:0.01:1;
x = 16*cos(4*pi*t);

% Sampling 
fs = 100; Ts = (1/fs); n = 0:(1/Ts);
x_s = 16*cos(4*pi*n*Ts);
figure; plot(t,x); hold on; grid on; stem(n*Ts,x_s,'o');
title("Original Signal versus Sampled Signal")

% Quantization
B = 4; 
Q = 32/(2^B); % quantization level 
for k = 1:length(x_s)
   x_q(k) = quantizer_function(x_s(k),Q);
end
figure; plot(t,x); hold on; stem(t,x_q);
title("Original Signal versus Quantized Signal")