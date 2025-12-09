program Pola_Angka_Rahasia;
uses crt;

var
    nama: string;
    n, i, j: integer;
    label_angka: string;

begin
    clrscr;
    
    write('Masukkan nama kamu: ');
    readln(nama);
    write('Masukkan n: ');
    readln(n);
    
    clrscr;
    writeln(nama, ', inilah pola angka rahasiamu:');
    writeln;

    i := 1;
    repeat
        if i mod 2 = 0 then
         label_angka := 'genap'
        else
            label_angka := 'ganjil';

        j := 1;
        repeat
            write(i, ' (', label_angka, ') ');
            j := j + 1;
        until j > i;

        writeln;
        i := i + 1;
    until i > n;
    writeln;
    writeln('Selamat ', nama, '!', ' Kamu berhasil membuka pintu rahasia ke level berikutnya!');
    readln;
end.