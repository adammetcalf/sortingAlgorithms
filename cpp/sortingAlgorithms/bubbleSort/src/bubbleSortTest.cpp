#include <iostream>
#include "supportingFiles/bubbleSort.h"                                       //bubble Sort function defined here.
#include "supportingFiles/printArray.h"                                       //Array printing function defined here.
#include "supportingFiles/generateArray.h"                                    //array generating function defined here.


// Driver code
int main()
{
    std::cout << "How many elements desired in array?: \n";
    int n;                                                                      
    std::cin >> n;                                                             //get desired array size
    int *arr = new int[n];                                                     //heap allocated array of size n (by reference)
    generateArray(arr, n);                                                     //generate Array
    bubbleSort(arr, n);                                                        //call bubble sorting algorithm
    std::cout << "Sorted array: \n";
    printArray(arr, n);
    delete[] arr;                                                              //must delete since heap allocated.
    return 0;
}