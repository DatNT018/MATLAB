function y = tableConv(x,h)
    Nx = length(x);
    Nh = length(h);
    y = zeros(1, Nx + Nh -1);
    for i = 1:Nx
        for k = 1:Nh
            y(i+k-1) = x(i)*h(k) + y(i+k-1);
        end
    end
end
