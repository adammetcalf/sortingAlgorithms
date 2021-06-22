function y = selectionSort(x)

% given an array of N items (and position L=0):
% 1. find the position of the smallest item x
% 2. swap the xth item with the lth item
% 3. increment L
% 4. repeat until L=N-2

%Note, this is slow: O(N^2) becuase of nested loops.

y=x;

L=1;                                                                        %init position L to 1st array index
for i=1:length(y)-1
    
    currentMinimum = y(L);                                                  %set first unsorted element as the minimum
    
    for j = L:length(y)-1                                                   %iterate across unsorted elements
        
            if (y(j+1) < currentMinimum)                                    %check if next unsorted element is less than sorted element at Position L
                
                y = swapElements(y, L, j+1);                                %swap xth and lth item
                currentMinimum = y(L);                                      %Set element as new minimum
            end
            
                                                                     
    end
    L = L +1;                                                               %increment L
end