clc,clear,close all
syms w 
n = 0:10;
x = cos(pi*n/3);
X = sum(x.*exp(-j*w*n));
figure
subplot(2,1,1)
fplot(abs(X),[-3*pi 3*pi]);
title("Magnitude of DTFT in 3 periods")
subplot(2,1,2)
w1 = -3*pi:0.1:3*pi;
XX = subs(X,w,w1);
plot(w1,angle(XX));
title("Phase of DTFT in 3 periods")


figure
subplot(2,1,1)
fplot(abs(X),[-5*pi 5*pi]);
title("Magnitude of DTFT in 5 periods")
subplot(2,1,2)
w1 = -5*pi:0.1:5*pi;
XX = subs(X,w,w1);
plot(w1,angle(XX));
title("Phase of DTFT in 5 periods")

