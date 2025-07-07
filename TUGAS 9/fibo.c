// Praktikum Arsitektur Sistem Komputer
// Percobaan	: 2
// Tanggal		: 17 April 2023
// Nama (NIM)	: Firda Rosela Sundari(2200198)
// Nama File	: fibo.c
// Deskripsi	: Deret Fibonacci

#include <stdio.h>
#define START_VAL 0
int accum = START_VAL;
int input (void)
{
int n;
scanf("%d", &n);
while (n<2)
{
scanf("%d", &n);
}
return (n);
}