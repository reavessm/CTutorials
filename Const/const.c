#include <stdio.h>

// Setting Constants using GCC PreProccessor

#define LENGTH 10
#define WIDTH 5
#define NEWLINE '\n'

int main() {
  int area;

  area = LENGTH * WIDTH;
  printf("Value of area from Defines: %d", area);
  printf("%c", NEWLINE);

  const int kLength = 20;
  const int kWidth = 40;
  const char nl = '\n';

  area = kLength * kWidth;
  printf("Value of area from Const: %d", area);
  printf("%c", nl);

  return 0;
}
