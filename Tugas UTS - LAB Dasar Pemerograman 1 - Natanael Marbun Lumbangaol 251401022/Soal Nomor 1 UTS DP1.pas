program SewaMobil;
uses crt;

var
    jenis: string;
    hari: integer;
    jarak: real;
    biaya_harian, biaya_jarak, total: real;

begin
    clrscr;
    

    write('Masukkan jenis mobil (Ekonomi/Sedan/SUV): ');
    readln(jenis);

    write('Masukkan jumlah hari sewa: ');
    readln(hari);

    write('Masukkan jarak tempuh (km): ');
    readln(jarak);

    // Tentukan biaya harian berdasarkan jenis mobil 
    if (jenis) = 'ekonomi'then
        biaya_harian := 300000
    else if (jenis) = 'sedan' then
        biaya_harian := 400000
    else if (jenis) = 'suv' then
        biaya_harian := 500000
    else
    begin
        writeln('Jenis mobil tidak dikenal!');
        halt;
    end;

    // Hitung biaya berdasarkan jarak tempuh 
    if jarak <= 100 then
        biaya_jarak := jarak * 1500
    else if jarak <= 200 then
        biaya_jarak := (100 * 1500) + ((jarak - 100) * 1000)
    else 
        biaya_jarak := (100 * 1500) + (100 * 1000) + ((jarak - 200) * 500);

    // Hitung total biaya 
    total := (biaya_harian * hari) + biaya_jarak;

    writeln;
    
    writeln('Total biaya sewa mobil adalah : ', total:0:0);
    readln;
end.