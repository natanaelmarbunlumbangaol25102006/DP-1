program NilaiAkhirMahasiswa;
uses crt;
var
  nama: string;
  nilai_keaktifan, nilai_tugas, nilai_ujian: real;
  murni_keaktifan, murni_tugas, murni_ujian, nilai_akhir: real;

begin
  clrscr;
  writeln('Program Hitung Nilai Akhir Mahasiswa');
  writeln('------------------------------------');

  write('Masukkan Nama Mahasiswa : '); 
  readln(nama);
  write('Masukkan Nilai Keaktifan : '); 
  readln(nilai_keaktifan);
  write('Masukkan Nilai Tugas     : '); 
  readln(nilai_tugas);
  write('Masukkan Nilai Ujian     : '); 
  readln(nilai_ujian);

  murni_keaktifan := nilai_keaktifan * 0.20;   { 20% }
  murni_tugas     := nilai_tugas * 0.35;       { 35% }
  murni_ujian     := nilai_ujian * 0.45;       { 45% }

  nilai_akhir := murni_keaktifan + murni_tugas + murni_ujian;

  writeln('------------------------------------');
  writeln('Nilai Akhir           = ', nilai_akhir:0:2);

end.