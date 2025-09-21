#include "../include/myfilefunctions.h"
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int wordCount(FILE* file, int* lines, int* words, int* chars) {
    if (!file) return -1;
    *lines = *words = *chars = 0;
    char c, prev = ' ';
    while ((c = fgetc(file)) != EOF) {
        (*chars)++;
        if (c == '\n') (*lines)++;
        if ((isspace(c)) && !isspace(prev)) {
            (*words)++;
        }
        prev = c;
    }
    // Count the last word if file does not end with whitespace
    if (!isspace(prev)) {
        (*words)++;
    }
    return 0;
}

int mygrep(FILE* fp, const char* search_str, char*** matches) {
    if (!fp || !search_str) return -1;
    char line[256];
    int count = 0;
    *matches = NULL;

    rewind(fp); // Reset file pointer to start

    while (fgets(line, sizeof(line), fp)) {
        if (strstr(line, search_str)) {
            char** temp = realloc(*matches, (count + 1) * sizeof(char*));
            if (!temp) return -1; // realloc failed
            *matches = temp;
            (*matches)[count] = strdup(line);
            count++;
        }
    }
    return count;
}
