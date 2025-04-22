clc,clear,close all
syms w
n = 0:19;
x = 5*cos(2*pi*n/3)
X = sum(x.*exp(-j*w*n));
figure
subplot(2,2,1)
fplot(abs(X),[0 2*pi]);
title("Magnitude of DTFT")
subplot(2,2,2)
w1 = 0:0.1:2*pi;
XX = subs(X,w,w1);
fplot(w1,angle(XX));
title("Phase of DTFT")

% 
% n = 0:19;
% N = length(n);
% x = 5*cos(2*pi*n/3);
% for k = 0:N-1
%     for n = 0:N-1
%         X(n+1) = x(n+1)*exp(-j*2*pi*k*n/N);
%     end
%     Xk(k+1) = sum(X);
% end
% subplot(2,2,3)
% mag = abs(Xk);
% stem(0:N-1,mag)
% title('Magnitude of DFT')
% subplot(2,2,4)
% phas = angle(Xk);
% stem(0:N-1,phas)
% title('Phase of DFT')




