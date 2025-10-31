program segitiga;
uses crt;

var
    a, t: real;
    luas: real;

begin
    clrscr;

    write('Masukkan sisi a : ');
    readln(a);
    write('Masukkan tinggi : ');
    readln(t);

    luas := 0.5 * a * t;

    writeln('Luas segitiga : ', luas:0:2);
end.