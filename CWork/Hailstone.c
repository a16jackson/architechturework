#include <stdio.h>
#include <stdlib.h>

int Hailstone (int n)
{
  if (n % 2 == 0) {
    return n /= 2;
  }
  else {
    return n = 3 * n + 1;
  }
  return n;
}

int main (void)
{
  int start, result;

  printf("Input a number: ");
  scanf("%d", &start);
  result = Hailstone(start);

  printf("%d\n", result);

  return 0;
}