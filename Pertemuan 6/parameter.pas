program Parameter;
uses crt;

procedure TampilkanNama(nama:string); // parameter formal
begin
    writeln('Halo ', nama);
end;

var
    namaAktual: string;

begin
    clrscr;
    namaAktual := 'Edward';
    TampilkanNama(namaAktual); // parameter aktual 
end.