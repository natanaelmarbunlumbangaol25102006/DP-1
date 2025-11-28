program WithRecord;
uses crt;

type
    waktu = record
        tanggal, tahun : integer;
        bulan : string;
end;

var
    hari_ini : waktu;

begin 
    clrscr;
    // pernyataan WITH = untuk mempersingkat penulisan kode
    with hari_ini do 
    begin
        write('Masukkan tanggal : ');
        readln(tanggal);
        write('Masukkan bulan : ');
        readln(bulan);
        write('Masukkan tahun : ');
        readln(tahun);
        writeln(tanggal, ' ', bulan, ' ', tahun);
    end;

end.