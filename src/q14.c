// Write a C program that prompts the user for a positive integer and prints all the factors of that number using a for loop.

#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    for (int i = 1; i <= n; i++) {
        if (n % i == 0)
            printf("%d ", i);
    }
    printf("\n");
    return 0;
}
