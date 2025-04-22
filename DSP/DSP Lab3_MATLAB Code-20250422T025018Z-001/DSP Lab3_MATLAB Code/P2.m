clc, clear, close all
n = input("Number of elements: ");
for i = 1:n
    h(i) = ((1/3)^(i-1))*heaviside(i-1-1);
end
for i = 1:n
    x(i) = ((1/2)^(i-1))*heaviside(i-1+1);
end
y1 = conv(x,h);
y2 = overlapConv(x,h,4);
figure
subplot(2,1,1)
stem(y1);
subplot(2,1,2)
stem(y2);