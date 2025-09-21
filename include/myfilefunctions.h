// File: include/myfilefunctions.h
#include <stdio.h>

// Count lines, words, chars in file
int wordCount(FILE* file, int* lines, int* words, int* chars);

// Search lines containing search_str in a file
int mygrep(FILE* fp, const char* search_str, char*** matches);
