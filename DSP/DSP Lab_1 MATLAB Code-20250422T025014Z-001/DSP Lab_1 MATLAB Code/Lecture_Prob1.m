clear; clear all; clc
x = [1,-2,4,6,-5,8,10]; n = [-4,-3,-2,-1,0,1,2];  
%%Prob1a
[x11,n11]=sigshift(x,n,-2);
[x12,n12]=sigshift(x,n,4);
[x13,n13]=sigadd(3*x11,n11,x12,n12);
[x1,n1]=sigadd(x13,n13,-2*x,n);
figure; subplot(2,2,1); stem(n1,x1); title('x_1[n_1]')

%%prob1b
[x21,n21]=sigshift(x,n,-5);
[x22,n22]=sigshift(x,n,-4);
[x23,n23]=sigadd(5*x21,n21,4*x22,n22);
[x2,n2]=sigadd(x23,n23,3*x,n);
subplot(2,2,2); stem(n2,x2); title('x_2[n_2]')

%%prob1c
[x31,n31]=sigshift(x,n,-4);
[x32,n32]=sigshift(x,n,1);
[x33,n33]=sigfold(x,n);
[x34,n34]=sigshift(x,n,-2); 
[x35,n35]=sigmult(x31,n31,x32,n32);
[x36,n36]=sigmult(x33,n33,x34,n34);
[x3,n3]=sigadd(x35,n35,x36,n36);
subplot(2,2,3); stem(n3,x3); title('x_3[n_3]')

%%prob1d
[x42,n42]=sigshift(x,n,-2);
n41=[-10:10]; x41=cos(0.1*pi*n41); 
[x43,n43]=sigmult(x41,n41,x42,n42);
[x4,n4]=sigadd(2*x,n,x43,n43);
subplot(2,2,4); stem(n4,x4); title('x_4[n_4]')