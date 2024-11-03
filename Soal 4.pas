program HitungKembalian; //nama program
uses crt;
var
    kembalian, pecahan: longint;
    jumlahPecahan: integer;
begin
clrscr;

    //input jumlah kembalian
    write('Masukkan jumlah kembalian: ');
    readln(kembalian);
    
    //inisialisasi jumlah pecahan
    jumlahPecahan := 0;
    
    //Proses menghitung jumlah pecahan minimum
    if kembalian >= 100000 then
    begin
        pecahan := kembalian div 100000;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 100000;
    end;
    
    if kembalian >= 75000 then
    begin
        pecahan := kembalian div 75000;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 75000;
    end;
    
    if kembalian >= 50000 then
    begin
        pecahan := kembalian div 50000;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 50000;
    end;
    
    if kembalian >= 20000 then
    begin
        pecahan := kembalian div 20000;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 20000;
    end;
    
    if kembalian >= 10000 then
    begin
        pecahan := kembalian div 10000;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 10000;
    end;
    
    if kembalian >= 5000 then
    begin
        pecahan := kembalian div 5000;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 5000;
    end;
    
    if kembalian >= 2000 then
    begin
        pecahan := kembalian div 2000;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 2000;
    end;
    
    if kembalian >= 1000 then
    begin
        pecahan := kembalian div 1000;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 1000;
    end;
    
    if kembalian >= 500 then
    begin
        pecahan := kembalian div 500;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 500;
    end;
    
    if kembalian >= 200 then
    begin
        pecahan := kembalian div 200;
        jumlahPecahan := jumlahPecahan + pecahan;
        kembalian := kembalian mod 200;
    end;
    
    while kembalian >= 100 do
    begin
        inc(jumlahPecahan);
        kembalian := kembalian - 100;
    end;
    
    //output hasil
    writeln('Jumlah minimum pecahan uang: ', jumlahPecahan);
end.
