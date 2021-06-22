#include "bubbleSort.h"


void bubbleSort(int arr[], int n)                                               //pass in array and array size
{
    int i, j;
    for (i = 0; i < n - 1; i++)

        for (j = 0; j < n - i - 1; j++)                                         //check each pair of consequetive elements in turn
            if (arr[j] > arr[j + 1])
                swap(&arr[j], &arr[j + 1]);
}