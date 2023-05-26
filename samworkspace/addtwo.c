#include <stdio.h>

int main()
{
    int sum, num1, num2; /* the two numbers that are added together */

    printf ("\nEnter two numbers here ");

    if (scanf("%d %d", &num1, &num2) == 2)
    {
        sum = num1 + num2;
        printf ("\n %d = %d + %d\n", sum, num1, num2);
    }
    else
        printf("Error in input, no answer AI generated");
}