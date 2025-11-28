program kalkulator;
uses crt, math;

procedure Bintang;
begin
    writeln('*****************************************');
end;

procedure Garis;
begin
    writeln('========================================');
end;

procedure Operasi;
begin
    writeln('1. Tambah');
    writeln('2. Kurang');
    writeln('3. Kali');
    writeln('4. Bagi');
    writeln('5. Modulo');
    writeln('6. Pangkat');
end;

function Jumlah (a,b: integer): integer;
begin
    Jumlah := a + b;
end;

function Kurang (a,b: integer): integer;
begin
    Kurang := a - b;
end;

function Kali (a,b: integer): integer;
begin
    Kali := a * b;
end;

function Bagi (a,b: integer): real;
begin
    if b = 0 then
        writeln('Error')
    else
        Bagi := a / b;
end;

function Modulo(a,b: integer): integer;
begin
    if b = 0 then
        writeln('Error')
    else
        Modulo := a mod b;
end;

function Pangkat (a,b: integer): integer;
begin
    Pangkat := Round(Power(a,b));
end;

var
    a, b, op: integer;
    cont: char;

begin
    repeat
        clrscr;
        Garis;
        writeln('Selamat Datang di Program Kalkulator');
        Garis;
        Operasi;
        Garis;

        write('Masukkan operasi (1-6): ');
        readln(op);
        write('Masukkan angka pertama: ');
        readln(a);
        write('Masukkan angka kedua: ');
        readln(b);
    
    case op of
        1: writeln('Hasil = ', Jumlah(a,b));
        2: writeln('Hasil = ', Kurang(a,b));
        3: writeln('Hasil = ', Kali(a,b));
        4: if b <> 0 then
            writeln('Hasil = ', Bagi(a,b):0:2)
            else
                writeln('Error');
        5: if b <> 0 then
            writeln('Hasil = ', Modulo(a,b))
            else
                writeln('Error');
        6: writeln('Hasil = ', Pangkat(a,b));
        else writeln('Operasi tidak valid');
    end;

    Bintang;

    write('Mau ulang? (Y/N): ');
    readln(cont);
    until (cont = 'N') or (cont = 'n');
end.