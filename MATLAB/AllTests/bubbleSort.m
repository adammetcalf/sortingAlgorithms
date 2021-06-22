function y = bubbleSort(x)

% 1. Compare adjacent items
% 2. swap pair if the items are out of order
% 3. repeat until at the end of the array
% 4. repaet steps 1-3 until array is sorted

%Note, this is slow: O(N^2) becuase of nested loops.

%boolean to determine if sort is complete or not
disordered = true;
y=x;
while(disordered)
    
    swapCount = 0;                                                          %init swapcount 
    
    for i = 1:(length(y))-1                                                 %check each pair of consequtive elements in turn
        if y(i) > y(i+1)
               y = swapElements(y, i, i+1);
               swapCount = swapCount + 1;                                   %increment swapCount if swap occurs
        end
    end
    
    if (swapCount == 0)                                                     %If no swaps occured, vector is ordered and loop condition set to false
        disordered = false;
    end
end

end

