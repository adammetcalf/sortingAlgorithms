clear;
clc;
close all;


% 1. mark the first element as sorted
% 2. for each unsorted element  x, extract the element
% 3. for j = lastSorted index, if j>x move sorted element to right by 1

%Note, this is slow: O(N^2) becuase of nested loops.

%Create array (range 0-200, 20 elements in array)
unSortedArray = randi(200,20,1);


%copy array so we have one to compare
sortedArray = unSortedArray;

for i = 2:size(sortedArray)
    j = i;    
    while((j > 1) && (sortedArray(j) < sortedArray(j-1)))                      %while j is greater than 1 and element at j is less than element at j-1
        sortedArray = swapElements(sortedArray, j, j-1);                       %swap the elements
        j = j-1;                                                               %decrement j
    end
end

