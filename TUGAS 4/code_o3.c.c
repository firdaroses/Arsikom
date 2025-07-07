// Organisasi dan Arsitektur Komputer Tekom Kelas 2B
// Modul	    :	1
// Percobaan	:	NA
// Tanggal	    :	23 Juni 2023
// Nama		    :	Firda Rosela Sundari (2200198) code.c
// Nama File	:	Demonstrasi proses kompilasi C
// Deskripsi	:	Menjumlahkan deret bilangan sebanyak N_LOOP



#define N_LOOP 500
int main (void)
{
	int indeks;
	int accumulator;
	indeks = 0;
	accumulator = 0;
	while (indeks<N_LOOP)
	{
		accumulator = accumulator + indeks;
		indeks = indeks + 1;
	}

	return accumulator;
}