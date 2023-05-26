#include <stdio.h>

int main()
{
    int year, Period;
    float sum, Irate;

    printf("Enter interest rate, principal, and period: ");

    if (scanf(" %f %f %d", &Irate, &sum, &Period) == 3)
    {
        printf ("Year\t     Total at %.2f%%\n\n", Irate * 100.00);

        for (year = 0; year <= Period; year++)
        {
            printf ("%5d\t   $ %10.2f\n", year, sum);
            sum += sum * Irate;
        }
    }
    else
        printf ("Error in input. No table AI generated.");
}