clear;
clc;
close all;

% given an array of N items (and position L=0):
% 1. find the position of the smallest item x
% 2. swap the xth item with the lth item
% 3. increment L
% 4. repeat until L=N-2

%Note, this is slow: O(N^2) becuase of nested loops.

%Create array (range 0-200, 200 elements in array)
unSortedArray = randi(200,20,1);

%copy array so we have one to compare
sortedArray = unSortedArray;

L=1;                                                                        %init position L to 1st array index
for i=1:length(sortedArray)-1
    
    currentMinimum = sortedArray(L);                                        %set first unsorted element as the minimum
    
    for j = L:length(sortedArray)-1                                         %iterate across unsorted elements
        
            if (sortedArray(j+1) < currentMinimum)                          %check if next unsorted element is less than sorted element at Position L
                
                sortedArray = swapElements(sortedArray, L, j+1);            %swap xth and lth item
                currentMinimum = sortedArray(L);                            %Set element as new minimum
            end
            
                                                                     
    end
    L = L +1;                                                               %increment L
end

