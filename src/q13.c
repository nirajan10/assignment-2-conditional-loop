// Write a C program that calculates the sum of all even numbers from 1 to 50 using a while loop.

#include <stdio.h>

int main() {
    int sum = 0, i = 2;
    while (i <= 50) {
        sum += i;
        i += 2;
    }
    printf("%d\n", sum);
    return 0;
}
