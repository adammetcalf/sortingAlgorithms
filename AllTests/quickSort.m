function y = quickSort(x)
%This function recursively performs the quick sort

%1.choose any element of the array to be the pivot
%2. Divide all other elements into 2 partitions
%3 All elements less than the pivot must be inthe 1st partition
%4. All elemtns larger than the pivot must be in the right parition
%5. use recursion to sort the partitions
%6. join the first sorted partition, the pivot and the second sorted
%partition.

    if numel(x) <= 1                                                       % Minimum size is one, this is necessary because of recursion      
        y = x;
        return                                                             %leave function if size is one
    end
 
    pivot = x(end);                                                        %define pivot as last element in array (location of elemnt doesn't actually matter in unsorted array)
    x(end) = [];                                                           %remove pivot from array
 
    y = [quickSort(x(x <= pivot)) pivot quickSort(x(x > pivot))];        
 
end

% y = [quickSort( x(x <= pivot)) pivot quickSort( x(x > pivot))];
%1st partition = x(x <= pivot) = array of all elements smaller than pivot
%2nd partition = x(x > pivot) = array of all elements greater than pivot