function y = quantizer_p3(x,R,B)
    Q = R/(2^B);
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
end