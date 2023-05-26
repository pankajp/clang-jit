// #include <stdint.h>

typedef int num;

int printf(const char *, ...);

num fib(num n)
{
    if (n < 3) return n;
    return fib(n-2) + fib(n-1);
}

int main()
{
    return printf("%ld\n", (long)fib(36));
}
