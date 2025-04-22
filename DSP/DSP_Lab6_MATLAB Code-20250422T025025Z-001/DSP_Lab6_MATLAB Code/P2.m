clc,clear,close all
n = 0:64;
N = length(n);
x = 3*cos(2*pi*n/3);
for k = 0:N-1
    for n = 0:N-1
        X(n+1) = x(n+1)*exp(-j*2*pi*k*n/N);
    end
    Xk(k+1) = sum(X);
end
figure
subplot(2,2,1)
mag = abs(Xk);
stem(0:N-1,mag)
legend('|X_k|')
subplot(2,2,2)
phas = angle(Xk);
stem(0:N-1,phas)
legend('\angle Xk')
subplot(2,2,3)
stem(0:N-1,real(Xk))
legend('Real Part')
subplot(2,2,4)
stem(0:N-1,imag(Xk))
legend('Imaginary Part')