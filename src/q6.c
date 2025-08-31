// Write a C program that prompts the user for a number and prints its multiplication table up to 10 using a do-while loop.

#include <stdio.h>

int main() {
    int n, i = 1;
    scanf("%d", &n);
    do {
        printf("%d ", n * i);
        i++;
    } while (i <= 10);
    printf("\n");
    return 0;
}
