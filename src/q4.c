// Write a C program that prints all even numbers between 1 and 100 using a for loop.

#include <stdio.h>

int main() {
    for (int i = 2; i <= 100; i += 2) {
        printf("%d ", i);
    }
    printf("\n");
    return 0;
}
