clc; clear all; close all;
%% 4a  
f1 = input('f_1='); f2 = input('f_2='); f3 = input('f_3='); f4 = input('f_4=');
% origin signal
ta_max = 2; ta=0:0.01:ta_max; 
xa=2.5*cos(2*pi*f1*ta)-1.5*sin(2*pi*f2*ta)+cos(2*pi*f3*ta)+0.5*cos(2*pi*f4*ta);

%% 4b
fmax=max([f1,f2,f3,f4]);
fs=5*fmax; Ts=1/fs;
% Sample Values 
n=0:(ta_max/Ts);
x_n=2.5*cos(2*pi*f1*n*Ts)-1.5*sin(2*pi*f2*n*Ts)+cos(2*pi*f3*n*Ts)+0.5*cos(2*pi*f4*n*Ts);
figure; subplot(3,1,1); plot(ta,xa); hold on; title('f_s=5*f_m_a_x');
subplot(3,1,2); plot(n*Ts,x_n,'o');
subplot(3,1,3); plot(ta,xa); hold on; stem(n*Ts,x_n,'o');

%% 4c
fs=0.5*fmax; Ts=1/fs; n=0:(ta_max/Ts);
x_n=2.5*cos(2*pi*f1*n*Ts)-1.5*sin(2*pi*f2*n*Ts)+cos(2*pi*f3*n*Ts)+0.5*cos(2*pi*f4*n*Ts);
figure; subplot(4,1,1); plot(ta,xa); hold on; title('f_s=0.5*f_m_a_x');
subplot(4,1,2); plot(n*Ts,x_n,'o');
subplot(4,1,3); plot(ta,xa); hold on; stem(n*Ts,x_n,'o');
% Reconstructed Signal
t_recons=0:0.01:ta_max; f = [f1 f2 f3 f4];
for i=-10:10
for k=1:4
    if ((f(k)+i*fs) > -fs/2) && (((f(k)+i*fs) <= fs/2))
        f(k) = f(k)+i*fs;
    end
end
end
x_recons = 2.5*cos(2*pi*f(1)*t_recons)-1.5*sin(2*pi*f(2)*t_recons)...
    +cos(2*pi*f(3)*t_recons)+0.5*cos(2*pi*f(4)*t_recons);
subplot(4,1,4); plot(t_recons,x_recons); hold on; stem(n*Ts,x_n,'o'); ylabel('Constructed Signal')
