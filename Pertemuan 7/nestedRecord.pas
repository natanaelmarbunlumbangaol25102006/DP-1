program NestedRecord;
uses crt;

type
    tanggal_lengkap = record
        tanggal, tahun : integer;
        bulan : string;
end;

    waktu = record 
        hari_ini: tanggal_lengkap;
    end;

var 
    hari : waktu; // akses biasa : hari.hari_ini.field

begin 
    clrscr;
        with hari.hari_ini do
        begin
            write('Masukkan tanggal : ');
            readln(tanggal);
            write('Masukkan bulan : ');
            readln(bulan);
            write('Masukkan tahun : ');
            readln(tahun);
            writeln('Tanggal lengkap : ', tanggal, ' ', bulan, ' ', tahun);
        end;
end.