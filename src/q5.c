// Write a C program that prompts the user for a positive integer and calculates the factorial of that number using a while loop.

#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    int fact = 1, i = 1;
    while (i <= n) {
        fact *= i;
        i++;
    }
    printf("%d\n", fact);
    return 0;
}
