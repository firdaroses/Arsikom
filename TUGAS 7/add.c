// Organisasi dan Arsitektur Komputer Tekom 2B
// Modul			:		1
// Percobaan		:		1
// Tanggal			:		17 April 2023
// Keompok			:		1
// Rombongan		:		NA
// Nama (NIM)		:		Firda Rosela Sundari (2200198)
// Nama File 		:		add.c
// Deskripsi		:		Demonstrasi header file 
//							Menjumlahkan dua bilangan

#define START_VAL 0

int accum = START_VAL;
int sum (int x, int y)
{
	int t = x + y;
	accum += t;
	return t;
}