function [G,a1,a2] = ResonatorFilter(input_fs,input_f0,input_fd)
syms fs f0 fd
R = 1 - (2*pi*fd/fs)/2;
w0 = (2*pi)*(f0/fs);
G_cal = (1-R)*sqrt(1-2*R*cos(2*w0)+R^2);
a1_cal = -2*R*cos(w0);
a2_cal = R^2;
G = double(subs(G_cal,[fs f0 fd],[input_fs,input_f0,input_fd]));
a1 = double(subs(a1_cal,[fs f0 fd],[input_fs,input_f0,input_fd]));
a2 = double(subs(a2_cal,[fd fs],[input_fd input_fs]));
end
