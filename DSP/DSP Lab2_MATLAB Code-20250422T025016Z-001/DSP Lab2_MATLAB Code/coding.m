function [code_m] = coding(m)
    for k = 1:length(m)
        if(abs(m(k))>=2)
            code_m(k) = "10";
        end
        if(m(k)==-1)
            code_m(k) = "11";
        end
        if(m(k)==1)
            code_m(k) = "01";
        end
        if(m(k)==0)
            code_m(k) = "00";
        end
    end
end


