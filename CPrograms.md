### HelloWorld

```c
#include <stdio.h>

int main() {
  printf("Hello World!\n");

  return 0;
}
```

### Const

```c
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
```

### Extern

```c
#include <stdio.h>

int count;
extern void write_extern();

int main() {
  count = 5;
  write_extern();
}
#include <stdio.h>

extern int count;

void write_extern(void) { printf("Count is %d\n", count); }
```

### SizeOf

```c
#include <float.h>
#include <limits.h>
#include <stdio.h>

int main() {
  printf("Storage size for int : %lu \n", sizeof(int));

  printf("Storage size for float : %lu \n", sizeof(float));
  printf("Minimum float positive value %E \n", FLT_MIN);
  printf("Maximum float positive value %E \n", FLT_MAX);
  printf("Precision value %d \n", FLT_DIG);

  printf("Characters: %c %c \n", 'a', 65);
  printf("Decimals: %d %ld\n", 1977, 650000L);
  printf("Preceding with blanks: %10d \n", 1977);
  printf("Preceding with zeros: %010d \n", 1977);
  printf("Some different radices: %d %x %o %#x %#o \n", 100, 100, 100, 100,
         100);
  printf("floats: %4.2f %+.0e %E \n", 3.1416, 3.1416, 3.1416);
  printf("Width trick: %*d \n", 5, 10);
  printf("%s \n", "A string");

  return 0;
}
```

### StorageClass

```c
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
```

### VarDec

```c
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

  c = a + b;
  printf("Value of 'c' : %d \n", c);

  f = 70.0 / 3.0;
  printf("Value of 'f' : %f \n", f);

  return 0;
}
```

