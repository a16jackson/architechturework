#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[]){ 
int num1, num2;

if (argc !=3)
{
    printf("Usage: ./addtwoargs int int\n");
    return 1;
}
    num1 = atoi(argv[1]);
    num2 = atoi(argv[2]);
    printf("addtwoargs of %d and %d is: %d\n", num1, num2, num1 + num2);
}