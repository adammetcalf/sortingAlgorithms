#include "generateArray.h"
#include <cstdlib>											//for rand fucntion

void generateArray(int arr[], int n)
{
	for (int i = 0; i < n; i++)
		arr[i] = std::rand() % 1000;						//Generate number between 0 to 999
}