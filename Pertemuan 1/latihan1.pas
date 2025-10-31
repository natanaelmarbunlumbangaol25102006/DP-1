program BiodataSederhana;
uses crt;

var
    nama, nim, alamat: string;
    kom: char;

begin
    clrscr;
    
    write('Masukkan Nama Anda   : ');
    readln(nama);
    
    write('Masukkan NIM Anda    : ');
    readln(nim);
    
    write('Masukkan Kom Anda    : ');
    readln(kom);
    
    write('Masukkan Alamat Anda : ');
    readln(alamat);
    
    
    writeln('Hallo, Nama saya ', nama, ', NIM saya ', nim, 
            ', saya di kom ', kom, ', alamat saya di ', alamat, 
            '. Salam Kenal Semua!');
    
    readln;
end.