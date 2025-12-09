program NilaiPraktikan;
uses crt;

var
    nama: string;
    nilai: real;
    indeks, indeks1, indeks2, indeks3, indeks4, indeks5: string;
    i, lulus, gagal: integer;

begin
    clrscr;

    lulus := 0;
    gagal := 0;

    for i := 1 to 5 do
    begin
        write('Nama Praktikan ', i, ': ');
        readln(nama);
        write('Nilai Akhir: ');
        readln(nilai);
        writeln;

        // Tentukan indeks nilai sesuai kriteria 
        if (nilai >= 90) then
            indeks := 'A'
        else if (nilai >= 85) then
            indeks := 'B+'
        else if (nilai >= 75) then
            indeks := 'C+'
        else if (nilai >= 70) then
            indeks := 'C'
        else if (nilai >= 65) then
            indeks := 'D'
        else
            indeks := 'E';

        // simpan indeks tiap praktikan
        case i of
          1: indeks1 := indeks;
          2: indeks2 := indeks;
          3: indeks3 := indeks;
          4: indeks4 := indeks;
          5: indeks5 := indeks;
        end;

         // Hitung jumlah lulus dan mengulang 
        if (indeks = 'A') or (indeks = 'B+') or (indeks = 'C+') or (indeks = 'C') then
            lulus := lulus + 1
        else
            gagal := gagal + 1;

    end;
    clrscr;
    // Tampilkan Hasil Akkhir
    writeln('Indeks Nilai Praktikan 1: ', indeks1);
    writeln('Indeks Nilai Praktikan 2: ', indeks2);
    writeln('Indeks Nilai Praktikan 3: ', indeks3);
    writeln('Indeks Nilai Praktikan 4: ', indeks4);
    writeln('Indeks Nilai Praktikan 5: ', indeks5);
    writeln('Total Praktikan Lulus: ', lulus);
    writeln('Total Praktikan Mengulang: ', gagal);

    readln;
end.