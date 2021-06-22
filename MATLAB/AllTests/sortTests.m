clc;
clear;
close all;

%size of vector for sorting
n = 10000;            

%Create array (range 0-200000, n elements in array)
unSortedArray = randi(200000,n,1);

%peform and time bubbleSort
tic
sortedArray = bubbleSort(unSortedArray);
sort(1) = toc;
%validate array is actually sorted
isSorted(1) = issorted(sortedArray);

%peform and time insertionSort
tic
sortedArray = insertionSort(unSortedArray);
sort(2) = toc;
%validate array is actually sorted
isSorted(2) = issorted(sortedArray);

%peform and time selectionSort
tic
sortedArray = selectionSort(unSortedArray);
sort(3) = toc;
%validate array is actually sorted
isSorted(3) = issorted(sortedArray);

%peform and time mergeSort
tic
sortedArray = mergeSort(unSortedArray);
sort(4) = toc;
%validate array is actually sorted
isSorted(4) = issorted(sortedArray);

%peform and time quickSort
tic
sortedArray = quickSort(sortedArray);
sort(5) = toc;
%validate array is actually sorted
isSorted(5) = issorted(sortedArray);


%plot if all sorted correctly, error if not
if (isSorted ==1)
    
    figure(1)
    X = categorical({'Bubble','Insertion','Selection','Merge','Quick'});
    Y = sort;
    bar(X,Y);
    title({
    ['Benchmarked Sort Times for Different Sorting Algorithms']
    ['for a vector with ' num2str(n) ' elements']
    })
    xlabel('Sorting Algorithms')
    ylabel('time (s)')
    
    
else
    disp('Errors in sorting algorithms')
end