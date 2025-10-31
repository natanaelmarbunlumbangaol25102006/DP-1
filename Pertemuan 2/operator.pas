program testOperator;
uses crt;

var 
    a, b: integer;
    pointer : ^integer;
    al, ya, oke: string;
begin
    clrscr;

    // assignment operator
    a := 8;
    b := 3;

    // unary operator
    writeln(-a);

    // string operator
    al := 'Dasar';
    ya := 'Pemrograman';
    oke := al + ' ' + ya;
    writeln(oke);

    // address operator
    pointer := @a;
    writeln(pointer^);

    // binary opeator (integer)
    writeln('Hasil pembagian : ', a / b:0:2);
    writeln('Hasil div : ', a div b);
    writeln('Hasil mod : ', a mod b);

    // relational operator
    writeln('a = b ', a = b);
    writeln('a > b ', a > b);
    writeln('a >= b ', a >= b);
    writeln('a IN (5, 10, 15) ', a in [5, 10, 15]);

    // logical operator
    writeln(not true);
    writeln(false and true);
    writeln(false and false);
    writeln(true or false);
    writeln(false or false);
    writeln(true xor true);
    writeln(true xor false);

    // bitwise operator
    writeln('not a = ', not a);
    writeln('not b = ', not b);
    writeln('a and b = ', a and b);
    writeln('a or b = ', a or b);
    writeln('a xor b = ', a xor b);
    writeln('a shl b = ', a shl b);
    writeln('a shr b = ', a shr b);
end.