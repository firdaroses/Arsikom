// Organisasi dan Arsitektur Komputer Tekom 2B
// Modul			:		1
// Percobaan		:		1
// Tanggal			:		17 April 2023
// Rombongan		:		NA
// Nama (NIM)		:		Firda Rosela Sundari (2200198)
// Nama File 		:		sumofsquare.c
// Deskripsi		:		Demonstrasi prosedur call dan stuck
//							Menghitung jumlah dari kuadraat bilangan

int square (int x)
{
	return x*x;
}

int squaresum (int y, int z)
{
	int temp1 = square(y);
	int temp2 = square(z);
	return temp1+temp2;
}

int main (void)
{
	int a = 5; int b = 9;
	return squaresum(a,b);
}