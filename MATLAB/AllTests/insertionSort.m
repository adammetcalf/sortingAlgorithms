function y = insertionSort(x)


% 1. mark the first element as sorted
% 2. for each unsorted element  x, extract the element
% 3. for j = lastSorted index, if j>x move sorted element to right by 1

%Note, this is slow: O(N^2) becuase of nested loops.

y=x;

for i = 2:size(y)
    j = i;    
    while((j > 1) && (y(j) < y(j-1)))                      %while j is greater than 1 and element at j is less than element at j-1
        y = swapElements(y, j, j-1);                       %swap the elements
        j = j-1;                                           %decrement j
    end
end


