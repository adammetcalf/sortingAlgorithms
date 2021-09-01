#include "insertionSort.h"


void insertionSort(int arr[], int n)
{
    int j, key;
    for (int i = 1; i < n; i++)
    {
        j = i-1;
        key = arr[i];

        while (j >= 0 && arr[j] > key)                        //while index j is greater than 0 and element at j is greater than the key
        {
            arr[j + 1] = arr[j];                              //replace element at j=1 with elemtn at j
            j = j - 1;                                        //decrement j
        }
        arr[j + 1] = key;                                     //update value of the key
    }
}