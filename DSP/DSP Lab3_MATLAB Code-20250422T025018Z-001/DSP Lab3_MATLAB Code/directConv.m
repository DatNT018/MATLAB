function y = directConv(x,h)
    LH = length(h);
    M = LH - 1;
    L = length(x);
    n = M + L - 1;
    for i = 0:n
        m = max([0 i-L+1]):min([i M]);
        y(i + 1) = 0;
        for k = m(1):m(length(m))
            y(i+1) = y(i+1) + (h((i-k)+1)*x(k+1));
        end
    end
   
end