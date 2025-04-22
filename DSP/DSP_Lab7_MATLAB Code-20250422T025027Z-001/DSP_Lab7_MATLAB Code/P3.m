clc,clear,close all
syms fs f0 fd
R = 1 - (2*pi*fd/fs)/2;
w0 = (2*pi)*(f0/fs);
G_cal = (1-R)*sqrt(1-2*R*cos(2*w0)+R^2);
a1_cal = -2*R*cos(w0);
a2_cal = R^2;

[G,a1,a2] = ResonatorFilter(30*10^6,2*10^6,0.5*10^6);
freqz([G 0 0],[1 a1 a2]);
