#ifndef MEMOIZE_H
#define MEMOIZE_H

typedef long long (*ll_func_ptr)(int);

extern ll_func_ptr fibonacci_provider;

void initialize();
long long fibonacci(int n);
long long cache(int val);

#endif // MEMOIZE_H