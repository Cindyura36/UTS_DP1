program TotalBelanjaSayur; //nama program
uses crt;
var
  jumlahPelanggan, pelangganKe, jumlahJenisSayur, jenisKe: Integer;
  hargaSayur, jumlahSayur, totalBelanja: LongInt;

begin
  clrscr;
  //input jumlah pelanggan
  Write('Masukkan jumlah pelanggan: ');
  ReadLn(jumlahPelanggan);
  
  pelangganKe := 1;

  //mengulangi proses semua pelanggan
  while pelangganKe <= jumlahPelanggan do
  begin
    WriteLn('Pelanggan ke-', pelangganKe, ':');
    
    //menerima input jumlah jenis sayur yang dibeli
    Write('Masukkan jumlah jenis sayur yang dibeli: ');
    ReadLn(jumlahJenisSayur);
    totalBelanja := 0;

    //hitung total belanja per-pelanggan
    jenisKe := 1;
    while jenisKe <= jumlahJenisSayur do
    begin
      Write('Masukkan harga sayur ke-', jenisKe, ': ');
      ReadLn(hargaSayur);
      Write('Masukkan jumlah sayur yang dibeli: ');
      ReadLn(jumlahSayur);
      
      //hitung total untuk jenis sayur ini
      totalBelanja := totalBelanja + (hargaSayur * jumlahSayur);
      jenisKe := jenisKe + 1;
    end;

    //output total belanja untuk pelanggan ini
    WriteLn('Total belanja untuk pelanggan ke-', pelangganKe, ': Rp ', totalBelanja);
    
    pelangganKe := pelangganKe + 1;
  end;

  ReadLn; //menunggu input untuk menutup program
end.
