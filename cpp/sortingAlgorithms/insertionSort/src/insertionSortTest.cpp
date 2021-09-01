#include <iostream>
#include "supportingFiles/insertionSort.h"
#include "supportingFiles/printArray.h"                                       //Array printing function defined here.
#include "supportingFiles/generateArray.h"                                    //array generating function defined here.


int main()
{
    std::cout << "How many elements desired in array?: \n";
    int n;
    std::cin >> n;                                                             //get desired array size
    int* arr = new int[n];                                                     //heap allocated array of size n (by reference)
    generateArray(arr, n);                                                     //generate Array
    insertionSort(arr, n);
    printArray(arr, n);
    delete[] arr;                                                              //must delete since heap allocated.
    return 0;
}