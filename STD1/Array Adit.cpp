#include <iostream>
#include <conio.h>
using namespace std;
void hiasan (){
cout<<"+============================================+"<<endl;
}
int main()
{
    char nama[100][100];
    int nilai[100];
    int no;
    hiasan();
    cout<<"+=== selamat datang di input nilai Fisika dasar 2 ===+"<<endl;
    hiasan();
    cout<<"Masukan Jumlah Mahasiswa: ";
    cin>>no;
    system ("cls");
    //input data
    for (int i=1;i<=no;i++){
    
    cout<<"masukkan nama mahasiswa: ";
        cin>>nama[i];
        cout<<"masukkan nilai mahasiswa: ";
        cin>>nilai[i];
        }
        system ("cls");
    //menampilkan data
    cout<<"Data Nilai:"<<endl;
    for (int a=1;a<=no;a++){
        cout<<"nama: "<<nama[a]<<" dengan nilai: "<<nilai[a]<<endl;
        }

    return 0;
}
