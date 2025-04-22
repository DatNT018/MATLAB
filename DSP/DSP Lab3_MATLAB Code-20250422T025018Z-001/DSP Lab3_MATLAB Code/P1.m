clc, clear, close all
% Section a
% for i = 1:5
%     x(i) = input("Value for x: ");
% end
% 
% for i = 1:5
%     h(i) = input("Value for h: ");
% end
% y = conv(x,h);
% figure(1);
% subplot(3,1,1)
% stem(x);
% subplot(3,1,2);
% stem(h);
% subplot(3,1,3);
% stem(y);


% Section b
% n = input("Number of elements: ");
% for i = 1:n
%     h(i) = ((1/3)^(i-1))*heaviside(i-1-1);
% end
% for i = 1:n
%     x(i) = ((1/2)^(i-1))*heaviside(i-1+1);
% end
% y = conv(x,h);
% figure(1);
% subplot(3,1,1)
% stem(x);
% subplot(3,1,2);
% stem(h);
% subplot(3,1,3);
% stem(y);

% Section c
 n = input("Number of elements: ");
for i = 1:n
    h(i) = ((1/3)^(i-1))*heaviside(i-1-1);
end
for i = 1:n
    x(i) = ((1/2)^(i-1))*heaviside(i-1+1);
end
 Xw = fft(x, 2*n - 1);
 Hw = fft(h, 2*n - 1);
 y = ifft(Xw.*Hw, 2*n-1);
 figure(1);
subplot(3,1,1)
stem(x);
subplot(3,1,2);
stem(h);
subplot(3,1,3);
stem(y);
 
 

