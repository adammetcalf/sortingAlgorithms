function [swappedArray] = swapElements(unSwappedArray, index1, index2)

%This function swaps the elements at index1 1 and index2 of an array, and
%returns the adjusted array.

swappedArray = unSwappedArray;                                              %init swappedArray

swappedArray(index1) = unSwappedArray(index2);                              %replace 1st element

swappedArray(index2) = unSwappedArray(index1);                              %replace 2nd element

end