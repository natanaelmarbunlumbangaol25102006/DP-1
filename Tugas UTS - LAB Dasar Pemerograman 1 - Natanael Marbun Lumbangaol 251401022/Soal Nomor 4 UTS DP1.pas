program Bilangan_Prima;
uses crt;

var
    n, i, j, count: integer;
    prima: boolean;

begin
    clrscr;
    
    write('Masukkan nilai n: ');
    readln(n);
    writeln;

    writeln('Bilangan prima dari 1 hingga ', n, ' adalah:');
    count := 0; //  untuk menghitung jumlah bilangan prima yang sudah dicetak 

    for i := 2 to n do
    begin
        prima := true;

        // Periksa apakah i adalah bilangan prima 
        for j := 2 to i - 1 do
        begin
            if (i mod j = 0) then
            begin
                prima := false;
                break;
            end;
        end;

        if prima then
        begin
            count := count + 1;

            // Jika bukan bilangan prima terakhir, tampilkan koma 
            if count = 1 then
                write(i)
            else
                write(', ', i);
        end;
    end;

    writeln;
    readln;
end.