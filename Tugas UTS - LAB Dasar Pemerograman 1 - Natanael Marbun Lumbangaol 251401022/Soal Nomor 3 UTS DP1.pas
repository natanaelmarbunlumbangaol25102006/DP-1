program Jono_dan_Misi_Hitung_Angka;
uses crt;

var
    n, i: integer;
    angka, total, rata: real;

begin
    clrscr;

    total := 0;

    writeln;
    write('Masukkan Nilai N : ');
    readln(n);
    for i := 1 to n do
    begin
        write('Angka ke-', i, ': ');
        readln(angka);
        total := total + angka;
    end;

    rata := total / n;

    clrscr;
    writeln('Jumlah Total : ', total:0:0);
    writeln('Rata-rata : ', rata:0:1);

    readln;
end.