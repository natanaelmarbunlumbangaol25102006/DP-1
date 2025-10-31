program batuBatu;
uses crt;

var
    a, b, c, temp: integer;

begin
    clrscr;
    write('Masukkan batu 1: ');
    readln(a);
    write('Masukkan batu 2: ');
    readln(b);
    write('Masukkan batu 3: ');
    readln(c);

    // batu : 100, 40, 60 --> 40, 60, 100
    if (a > b) then
    begin
        temp:= a;
        a:= b;
        b:= temp;
    end;
    if (b > c) then
    begin
        temp:= b;
        b:= c;
        c:= temp;
    end;
    if (a > c) then
    begin
        temp:= a;
        a:= c;
        c:= temp;
    end;
    writeln(a, ' ', b, ' ', c)
end.