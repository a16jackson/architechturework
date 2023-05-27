#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
     
    if (argc != 3){
    printf("Usage: ./max2in int int\n");
    return 1;
    }

int num1, num2;
num1 = atoi(argv[1]);
num2 = atoi(argv[2]);

if (num1 > num2){
    printf("%d is larger than %d\n", num1, num2);
    }
else if (num2 > num1){
    printf("%d is larger than %d\n", num2, num1);
    }
else
    printf("Undefined\n");
    }