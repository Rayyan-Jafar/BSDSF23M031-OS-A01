#include <stdio.h>
#include "../include/mystrfunctions.h"
#include "../include/myfilefunctions.h"

int main() {
    printf("--- Testing String Functions ---\n");
    char s1[50] = "Hello";
    char s2[50] = " World";
    printf("Length of '%s': %d\n", s1, mystrlen(s1));
    mystrcat(s1, s2);
    printf("Concatenated: %s\n", s1);

    // Extra string tests
    char s3[50];
    mystrcpy(s3, s1);
    printf("Copied string: %s\n", s3);

    char s4[50];
    mystrncpy(s4, s1, 5);
    s4[5] = '\0';  // Null-terminate
    printf("First 5 chars copied: %s\n", s4);

    printf("\n--- Testing File Functions ---\n");

    // Try opening test.txt in both possible locations
    FILE* fp = fopen("test.txt", "r");
    if (!fp) {
        fp = fopen("../test.txt", "r");
    }

    if (fp) {
        int lines, words, chars;
        wordCount(fp, &lines, &words, &chars);
        printf("Lines: %d, Words: %d, Chars: %d\n", lines, words, chars);
        fclose(fp);
    } else {
        printf("Error: Could not open test.txt\n");
    }

    return 0;
}
