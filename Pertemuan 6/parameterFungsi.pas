program Parameter;
uses crt;

procedure HitungLuasKeliling(
    p, l: integer; // parameter masukan
    var luas, keliling: integer // parameter keluaran
);

begin
    luas:= p * l;
    keliling:= 2 *(p + l);
end;

procedure UbahUkuran(
    var p,l: integer // parameter masukan - keluaran
);
begin
    p:= p + 2;
    l:= l + 1;
end;

var
    panjang, lebar: integer;
    L, K : integer;

begin 
    clrscr;
    write('Masukkan panjang : ');
    readln(panjang);
    write('Masukkan lebar : ');
    readln(lebar);

    // panggil prosedur HitungLuasKeliling
    HitungLuasKeliling(panjang, lebar, L, K);
    writeln('Luas = ', L);
    writeln('Keliling = ', K);

    // panggil prosedur UbahUkuran
    UbahUkuran(panjang, lebar);
    writeln('-- setelah di ubah --');
    writeln('panjang yang baru : ', panjang);
    writeln('lebar yang baru : ', lebar);

    // hitung lagi dengan ukuran baru
    HitungLuasKeliling(panjang, lebar, L, K);
    writeln('Luas baru = ', L);
    writeln('Keliling baru = ', K);

end.