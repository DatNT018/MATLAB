clc, clear, close all
x = input("Values for x: ");
h = input("Values for h: ");
n = input("Number of elements per block: ");
y1 = conv(x,h)
y2 = tableConv(x,h)
y3 = LTIConv(x,h)
y4 = overlapConv(x,h,n)
figure
subplot(2,2,1)
stem(y1);
title("Built-in function")
subplot(2,2,2)
stem(y2);
title("Convolution table")
subplot(2,2,3)
stem(y3);
title("LTI form")
subplot(2,2,4)
stem(y4);
title("Overlap-Add block")