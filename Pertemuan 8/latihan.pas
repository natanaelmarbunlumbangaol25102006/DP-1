uses crt;
var
  a, b, c, d: ^string;
  text: string;

begin
  clrscr;
  text := 'Halo Dunia Tipu-Tipu!!!';
  
  a := @text;
  
  a^ := 'SELAMAT TINGGAL DUNIA';

  new(b);
  b^ := 'SELAMAT PAGI';

  new(c);
  c^ := 'GOOD MORNING';

  new(d);
  d^ := 'P, PAGI NGAB';

  c := b;
  d^ := a^;
  writeln('isi variabel text : ', text); 
  writeln('isi variabel a : ', a^); 
  writeln('isi variabel b : ', b^); 
  writeln('isi variabel c : ', c^); 
  writeln('isi variabel d : ', d^); 
end.