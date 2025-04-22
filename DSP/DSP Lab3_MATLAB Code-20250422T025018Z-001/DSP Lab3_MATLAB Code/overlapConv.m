function y = overlapConv(x,h,n)
    Nx = length(x);
    Nh = length(h);
    if(Nx < n)
        x = [x zeros(1,n-Nx)];
    end
   
    if(Nx > n)
        x = [x zeros(1, n - mod(Nx, n))];
    end
    Nx = length(x);
    numberofBlocks = Nx / n;
    temp_mat = [];
    for i = 1:numberofBlocks
        x_part = x(1,(n*(i-1)+1):(n*i))
        temp_mat = [temp_mat ; tableConv(x_part,h)];
    end
    
    Y = zeros(numberofBlocks,Nx + Nh - 1);
    for i = 1:numberofBlocks
        for j = 1:size(temp_mat,2);
            Y(i,n*(i-1)+j) = temp_mat(i,j) + Y(i,n*(i-1)+j);
        end
    end
    y = sum(Y, 1);
    
%     Nx = length(x);
%     Nh = length(h);
%     N = n + (Nx - mod(Nx,n));
%     if(Nx < N)
%         x = [x zeros(1,N-Nx)];
%     end
%    
%     if(Nx > N)
%         x = [x zeros(1, N - mod(Nx, N))];
%     end
%     Nx = length(x);
%     quot = Nx / N;
%     display(quot);
%     Y = [];
%     for i = 1:quot
%         x_part = x(1,(N*(i-1)+1):(N*i));
%         Y = [Y ; tableConv(x_part,h)];
%     end
%     
%     Y_new = zeros(quot,Nx + Nh - 1);
%     for i = 1:quot
%         for j = 1:size(Y,2);
%             Y_new(i,N*(i-1)+j) = Y(i,j) + Y_new(i,N*(i-1)+j);
%         end
%     end
%     y = sum(Y_new, 1);
end
