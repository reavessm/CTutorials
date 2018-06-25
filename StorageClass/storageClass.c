#include <stdio.h>

// Function Declaration
void func(void);

// Global Static
static int count = 5;

int main() {
  while (count--) {
    func();
  }

  return 0;
}

// Function Definition
void func(void) {
  // Local static Variable
  static int i = 5;
  i++;

  printf("i is %d and count is %d\n", i, count);
}
