# include <string.h>
# include <iostream>
using namespace std;
 struct data_nasabah
{
	char namaLengkap [ 50 ];
	char alamatRumah [ 100 ];
	int kode;
	int status;
	char noHP [ 13 ];
}menangkap;
int main ()
{
data_nasabah nab;
cout << " SILAHKAN MASUKKAN DATA \n ";
cout << " Nama Nasabah: " ; cin >> nab. namaLengkap;
cout << " Alamat Rumah: " ; cin >> nab. alamatRumah;
cout << " Kode: " ; cin >> nab. kode;
cout << " Status: " ; cin >> nab. status;
cout << " No HP: " ; cin >> nab. noHP;


cout << " \n \n \n DATA YANG TELAH DIMASUKKAN: \n ";
cout << " Nama Nasabah: " << nab. namaLengkap << endl;
cout << " Alamat Rumah: " << nab. alamatRumah << endl;
cout << " Kode: " << nab. kode << endl;
cout << " Status: " << nab. status << endl;
cout << " No HP: " << nab. noHP << endl;

return 0;
}
