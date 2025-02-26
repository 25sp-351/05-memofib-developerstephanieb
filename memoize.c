#include "memoize.h"
#include <stdio.h>

#define NOT_PRESENT -1
#define MAX_SIZE 92 // Memoize up to Fibonacci(91)

ll_func_ptr original_provider = NULL;
ll_func_ptr fibonacci_provider = NULL;

long long results[MAX_SIZE];

void initialize() {
  for (int ix = 0; ix < MAX_SIZE; ix++)
    results[ix] = NOT_PRESENT;

  original_provider = fibonacci;
  fibonacci_provider = cache;
}

long long fibonacci(int n) {
  if (n < 2)
    return n;
  return (*original_provider)(n - 1) + (*original_provider)(n - 2);
}

long long cache(int val) {
  if (results[val] == NOT_PRESENT) {
    results[val] = (*original_provider)(val);
  }
  return results[val];
}