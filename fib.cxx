
typedef int num;
#include <iostream>

//int printf(const char *, ...);

num fib(num n)
{
    if (n < 3) return n;
    return fib(n-2) + fib(n-1);
}

int main(int argc, char ** argv)
{
    std::cout << fib(36);
    return 0;
}
