// Write a C program that prompts the user for a positive integer and prints the
// multiplication table for that number up to 10 using a while loop.

#include <stdio.h>

int main() {
    int n, i = 1;
    scanf("%d", &n);
    while (i <= 10) {
        printf("%d ", n*i);
        i++;
    }
    printf("\n");
    return 0;
}
