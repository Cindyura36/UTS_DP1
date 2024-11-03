program Bintang ; //nama program
uses crt ;

var
a,b,c : integer;

begin
    clrscr;
    //input jumlah baris yang ingin diisi
    write('masukan jumlah baris :'); readln(a);

    //looping untuk baris
    for b := 1 to a do
    begin
    //looping untuk kolom
    for c := 1 to a do
    begin
        if(c = b) or (c =(a-b+1)) then //menentukan apa harus diisi bintang atau tidak
        begin
             write('*'); //menentukan bintang di posisi tertentu
        end
        else
            write(' '); //memberikan spasi  
        end;
        writeln; //mengganti baris setelah terisi
        end;
end.
