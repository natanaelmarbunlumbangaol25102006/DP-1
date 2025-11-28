program introRecord;
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
    write('Masukkan tanggal : ');
    readln(hari_ini.tanggal);
    write('Masukkan bulan : ');
    readln(hari_ini.bulan);
    write('Masukkan tahun : ');
    readln(hari_ini.tahun);

    writeln(hari_ini.tanggal, ' ', hari_ini.bulan, ' ', hari_ini.tahun);

end.