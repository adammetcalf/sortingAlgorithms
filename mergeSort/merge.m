function y = merge(x)
%This function recursively performs the merge sort

n = length(x);                                                      %How long is the vector?

if (n==1)                                                           %Minimum size is one, this is necessary because of recursion
    y=x;
    return                                                          %leave function if size is one
end

n_2 = int32(n/2);                                                   %Halve the vector (cast to int)

x1 = merge(x(1:n_2));                                               %pass the first half of the vector into the fucntiuon recursively
x2 = merge(x(n_2+1:n));                                             %pass the second half of the vector into the fucntiuon recursively

n1 = length(x1);                                                    %obtain the length of x1
n2 = length(x2);                                                    %obtain the length of x2
count_x1 = 1;                                                       %init count 1
count_x2 = 1;                                                       %init count 2

y=[];                                                               %init output vector


while (count_x1 <= n1)                                              %run for each element in x1
    
    if(count_x2>n2)                                                 %if count2 is greater than the number of elements in x2
           y = [y; x1(count_x1)];                                   %next element in y is count1th element of x1
           count_x1 = count_x1+1;                                   %increment count1
           continue                                                 %proceed to next loop iteration
    end
    
    if(x1(count_x1) < x2(count_x2))                                 %if count1th element of x1 is less than count2th element of x2
           y = [y; x1(count_x1)] ;                                  %next element in y is count1th element of x1
           count_x1 = count_x1+1;                                   %increment count1
    else
           y = [y; x2(count_x2)] ;                                  %else next element in y is count2th element of x2
           count_x2 = count_x2+1;                                   %increment count2
    end
end

for j = count_x2:n2                                                 %flesh out remiander of array with each element of x2 in order
    y = [y; x2(j)];
end

end