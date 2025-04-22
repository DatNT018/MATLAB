function [y,k,e] = quantizer_function(x,Q)
    m = x/Q;
    remainder = m-floor(m);
    m = floor(m);
    if(remainder >= 0.5)
        remainder = ceil(remainder);
    end
    if(remainder <0.5)
        remainder = floor(remainder);
    end
    y = (m + remainder)*Q;
    k = m+remainder;
    e = y-x;
end