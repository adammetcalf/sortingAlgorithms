clear;
clc;
close all;

%Create array (range 0-200, 20 elements in array)
unSortedArray = randi(200,20,1);


%copy array so we have one to compare
sortedArray = unSortedArray;

sortedArray = merge(sortedArray);