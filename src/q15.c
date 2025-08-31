// Write a C program that prompts the user for a positive integer and checks if it is a prime number using a while loop.

#include <stdio.h>

int main() {
    int n, i = 2, isPrime = 1;
    scanf("%d", &n);
    if (n <= 1) isPrime = 0;
    while (i*i <= n && isPrime) {
        if (n % i == 0)
            isPrime = 0;
        i++;
    }
    if (isPrime)
        printf("Prime\n");
    else
        printf("Not prime\n");
    return 0;
}
