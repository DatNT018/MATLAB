function y = myConv(x,h)
M = length(x);
N = length(h);
X = fft(x,M+N-1);
H = fft(h,M+N-1);
y = ifft(X.*H);
end