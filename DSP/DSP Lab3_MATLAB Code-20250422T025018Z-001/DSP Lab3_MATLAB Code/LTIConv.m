function y = LTIConv(x,h)
    Nx = length(x);
    Nh = length(h);
    Y = zeros(Nx,Nx + Nh - 1);
    for i = 1:Nx
        for k = 1:Nh
            Y(i,k+i-1) = x(i)*h(k) + Y(i,k+i-1);
        end
    end
    y = sum(Y, 1);
end