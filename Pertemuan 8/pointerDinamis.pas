program pointerDinamis;
uses crt;

var 
    x: integer;
    p: ^integer;
    q: ^integer; // pointer dinamis
begin 
    clrscr;
    x := 10;
    p := @x; // alamat x, bukan isi x

    // tampilkan isi x seperti biasa
    writeln('Isi dari x : ', x);

    // tampilkan alamat dari x
    writeln('Alamat dari variabel x : ', PtrUInt(p));

    // isi alamatnya? pakai ^
    writeln('Isi x via pointer p^ : ', p^);

    // Pointer Dinamis -- new & dispose
    new(q); // komputer akan membuat ruang baru
    q^ := 20; // isi ruang baru

    writeln('Alamat q : ', PtrUInt(q));
    writeln('Isi dari q^ : ', q^);

    dispose(q); // kembalikan ruang setelah dipakai
end.