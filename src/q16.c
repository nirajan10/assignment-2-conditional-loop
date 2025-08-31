// Write a C program that calculates the factorial of a given number using a do-while loop.

#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    int fact = 1, i = 1;
    if (n == 0) {
        fact = 1;
    } else {
        do {
            fact *= i;
            i++;
        } while (i <= n);
    }
    printf("%d\n", fact);
    return 0;
}
