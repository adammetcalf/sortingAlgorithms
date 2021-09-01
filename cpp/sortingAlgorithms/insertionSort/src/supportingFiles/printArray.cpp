#include <iostream>
#include "printArray.h"


void printArray(int arr[], int size)                                    //prints array
{
    int i;
    for (i = 0; i < size; i++)
        std::cout << arr[i] << " ";
    std::cout << '\n';
}