#include "derivative.h"
#include <stdint.h>

void swap(int *num1, int *num2)
{

    int temp;
    temp = *num1;
    *num1 = *num2;
    *num2 = temp;
}

int main(void)
{

    int a, b;

    a = 100;
    b = 200;

    swap(&a, &b);
    return 0;
}