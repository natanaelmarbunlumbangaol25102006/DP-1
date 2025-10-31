program perulangan;
uses crt;

var
    i, j, n: integer;

begin
    clrscr;
    // Statement For
    // for i:= 1 to 7 do 
    //     writeln('Fasilkom-TI');
    
    // for i:= 1 to 10 do 
    //     writeln(i);

    // for i:= 10 downto 1 do 
    //     writeln(i);


    // Nested Loop
    // write('Masukkan jumlah baris : ');
    // readln(n);

    // for i:= 1 to n do 
    // begin
    //     for j:= 1 to i do 
    //     write(' *');
    //     writeln;
    // end;


    // Latihan 1
    // write('Masukkan banyak baris : ');
    // readln(n);

    // for i := 1 to n do
    // begin
    //     for j := 1 to i do
    //     begin
    //     if (i mod 2 = 1) then
    //         write('*')    {jika baris ganjil tulis '*' }
    //     else
    //         write(i);    {jika baris genap tulis angka i }

    //     if j < i then
    //         write(' ');   {spasi antar elemen pada baris}
    //     end;
    //     writeln;          {pindah ke baris berikutnya}
    // end;


    // Segitiga Bintang
    // write('Masukkan jumlah baris : ');
    // readln(n);

    // for i:= 1 to n do
    // begin
    //     for j:= 1 to n - i do 
    //     write('  ');

    //     for j:= 1 to 2*i-1 do 
    //     write(' *');
    //     writeln;
    // end;


    // Statement While
    // i := 1;
    // while (i <= 5) do 
    // begin
    //     writeln('IKLC !');
    //     inc(i, 1); // i := i + 1
    // end;

    
    // Statement Repeat - Until
    // i:= 0;
    // repeat
    //     i:= i + 1;
    //     writeln(i);
    // until (i = 5);
end.