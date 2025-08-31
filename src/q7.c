/* Write a C program that prints a pattern of asterisks.
    *
    **
    ***
    ****
    *****
    ****
    ***
    **
    *
*/

#include <stdio.h>

int main() {
    int i, j;
    // top half
    for (i = 1; i <= 5; i++) {
        for (j = 1; j <= i; j++)
            printf("*");
        printf("\n");
    }
    // bottom half
    for (i = 4; i >= 1; i--) {
        for (j = 1; j <= i; j++)
            printf("*");
        printf("\n");
    }
    return 0;
}
