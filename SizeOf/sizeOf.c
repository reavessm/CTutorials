#include <stdio.h>
#include <limits.h>
#include <float.h>

int main () {
  printf("Storage size for int : %lu \n", sizeof(int));
  
  printf("Storage size for float : %lu \n", sizeof(float));
  printf("Minimum float positive value %E \n", FLT_MIN );
  printf("Maximum float positive value %E \n", FLT_MAX );
  printf("Precision value %d \n", FLT_DIG );

  printf ("Characters: %c %c \n", 'a', 65);
  printf ("Decimals: %d %ld\n", 1977, 650000L);
  printf ("Preceding with blanks: %10d \n", 1977);
  printf ("Preceding with zeros: %010d \n", 1977);
  printf ("Some different radices: %d %x %o %#x %#o \n", 100, 100, 100, 100, 100);
  printf ("floats: %4.2f %+.0e %E \n", 3.1416, 3.1416, 3.1416);
  printf ("Width trick: %*d \n", 5, 10);
  printf ("%s \n", "A string");

  return 0;
}
