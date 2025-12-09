program ManajemenJemaatGereja;

uses crt;

const
  MAX = 100;

type
  TJemaat = record
    nama: string[50];
    umur: integer;
    alamat: string[100];
  end;

  PJemaat = ^TJemaat;

var
  dataJemaat: array[1..MAX] of TJemaat;
  jumlah: integer;

{========================================}
{   PROSEDUR DAN FUNGSI                  }
{========================================}

procedure InputJemaat();
var
  p: PJemaat;
begin
  if jumlah >= MAX then
  begin
    writeln('Data sudah penuh!');
    exit;
  end;

  new(p);  { pointer }

  writeln('=== Input Data Jemaat ===');
  write('Nama   : '); readln(p^.nama);
  write('Umur   : '); readln(p^.umur);
  write('Alamat : '); readln(p^.alamat);

  inc(jumlah);
  dataJemaat[jumlah] := p^;   { simpan ke array }

  dispose(p);  { hapus pointer }
  writeln('Data berhasil ditambahkan!');
end;

procedure TampilData();
var
  i: integer;
begin
  writeln('=== Daftar Seluruh Jemaat ===');
  for i := 1 to jumlah do
  begin
    writeln('Data ke-', i);
    writeln('Nama   : ', dataJemaat[i].nama);
    writeln('Umur   : ', dataJemaat[i].umur);
    writeln('Alamat : ', dataJemaat[i].alamat);
    writeln('----------------------------');
  end;
end;

function CariJemaat(namaCari: string): integer;
var
  i: integer;
begin
  CariJemaat := -1;
  for i := 1 to jumlah do
  begin
    if dataJemaat[i].nama = namaCari then
    begin
      CariJemaat := i;
      exit;
    end;
  end;
end;

procedure Statistik();
var
  i, lansia: integer;
begin
  lansia := 0;

  for i := 1 to jumlah do
    if dataJemaat[i].umur > 50 then
      inc(lansia);

  writeln('Jumlah Jemaat Usia > 50 tahun: ', lansia);
end;

{========================================}
{                PROGRAM UTAMA           }
{========================================}

var
  pilihan: integer;
  namaCari: string;
  indexHasil: integer;

begin
  jumlah := 0;

  repeat
    clrscr;
    writeln('===== SISTEM DATA JEMAAT GEREJA =====');
    writeln('1. Input Data Jemaat');
    writeln('2. Tampilkan Semua Data');
    writeln('3. Cari Jemaat');
    writeln('4. Statistik Usia');
    writeln('5. Keluar');
    write('Pilih menu: ');
    readln(pilihan);

    case pilihan of
      1: InputJemaat();
      2: TampilData();
      3: begin
           write('Masukkan nama jemaat yang dicari: ');
           readln(namaCari);
           indexHasil := CariJemaat(namaCari);

           if indexHasil = -1 then
             writeln('Data tidak ditemukan!')
           else
           begin
             writeln('Data ditemukan!');
             writeln('Nama   : ', dataJemaat[indexHasil].nama);
             writeln('Umur   : ', dataJemaat[indexHasil].umur);
             writeln('Alamat : ', dataJemaat[indexHasil].alamat);
           end;
         end;
      4: Statistik();
      5: writeln('Keluar dari program...');
    else
      writeln('Pilihan tidak valid!');
    end;

    writeln;
    writeln('Tekan ENTER untuk melanjutkan...');
    readln;

  until pilihan = 5;

end.
