#include <stdio.h>
#include <stdlib.h>
    int hailstone (int inputnumber)
   
    {
    if (inputnumber == 1){
        return inputnumber;
    }
        
    else if (inputnumber % 2 == 0){
        return inputnumber /= 2;
    
    }

    else if (inputnumber % 2 != 0){
        return inputnumber = 3 * inputnumber + 1;

    }
   } 
    int main (void)
    {
        int inputnumber, result, i;
        printf ("INPUT a number : ");
        scanf("%d", &inputnumber);
      while(inputnumber > 1) {
            result = hailstone(inputnumber);
            printf("%d ", result);
            inputnumber = result;
        } 
        return 0;
    }
