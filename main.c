#include "memoize.h"
#include <stdio.h>
#include <stdlib.h>

int get_valid_input();

int main() {
  int n = get_valid_input();
  initialize();

  printf("Fibonacci(%d) = %lld\n", n, (*fibonacci_provider)(n));

  return 0;
}

int get_valid_input() {
  int n;
  char buffer[100];
  char extra;

  printf("Enter a number (0-91) to compute Fibonacci: ");
  if (!fgets(buffer, sizeof(buffer), stdin)) {
    fprintf(stderr, "Error reading input.\n");
    exit(EXIT_FAILURE);
  }

  if (sscanf(buffer, "%d %c", &n, &extra) != 1) {
    printf("Invalid input. Please enter an integer.\n");
    exit(EXIT_FAILURE);
  }

  if (n < 0 || n > 91) {
    printf("Number out of range. Please enter a number between 0 and 91.\n");
    exit(EXIT_FAILURE);
  }

  return n;
}

/* Commented out the loop-based get_valid_input() to allow test.sh to run
  int get_valid_input() {
  int n;
  char buffer[100];

  while (1) {
    printf("Enter a number (0-91) to compute Fibonacci: ");

    if (!fgets(buffer, sizeof(buffer), stdin)) {
      printf("Error reading input. Try again.\n");
      continue;
    }

    char extra;
    if (sscanf(buffer, "%d %c", &n, &extra) != 1) { // Detects extra characters
      printf("Invalid input. Please enter an integer.\n");
      continue;
    }

    if (n < 0 || n > 91) {
      printf("Number out of range. Please enter a number between 0 and 91.\n");
      continue;
    }

    return n;
  }
}
*/