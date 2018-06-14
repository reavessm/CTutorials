#include <stdio.h>

// Variable Declaration
extern int a, b;
extern int c;
extern float f;

int main() {

  // Variable Definition
  int a;
  int b, c;
  float f;

  // Variable Initialization
  a = 10;
  b = 20;

  c = a+b;
  printf("Value of 'c' : %d \n", c);

  f = 70.0/3.0;
  printf("Value of 'f' : %f \n", f);

  return 0;
}
