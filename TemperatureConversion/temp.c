#include <stdio.h>

int main() {
  float fahr, celsius;
  int lower, upper, step;

  step = 20;
  lower = 0;
  upper = 300;

  printf("%3s %6s\n", "C", "F");

  fahr = lower;
  while (fahr <= upper) {
    celsius = (5.0 / 9.0) * (fahr - 32.0);
    printf("%3.0f %6.1f\n", fahr, celsius);
    fahr += step;
  }

  printf("\n%3s %6s\n", "F", "C");

  celsius = lower;
  while (celsius <= upper) {
    fahr = (9.0 / 5.0) * (celsius + 32.0);
    printf("%3.0f %6.1f\n", celsius, fahr);
    celsius += step;
  }

  return 0;
}
