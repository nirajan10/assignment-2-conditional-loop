// Write a C program that calculates the absolute value of a given number without using the built-in absolute value function.

#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    if (n < 0)
        n = -n;
    printf("%d\n", n);
    return 0;
}
