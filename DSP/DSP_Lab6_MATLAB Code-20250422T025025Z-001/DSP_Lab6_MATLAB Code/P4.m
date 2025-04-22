clc,clear,close all
x1 = input("Sequence of x1: ");
x2 = input("Sequence of x2: ");
y_from_my_function = myConv(x1,x2)
y_from_conv_function = conv(x1,x2)