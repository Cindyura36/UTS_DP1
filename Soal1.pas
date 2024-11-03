program BiayaPerjalanan; //nama program
uses crt;
var
  jarak: real;
  biayaAwal, biayaJarak, totalBiaya, diskonUtama, diskonTambahan, biayaAkhir: real;
  memberPremiumInput: string;
  memberPremium: boolean;

begin
  clrscr;
  
  //input jarak perjalanan
  write('Jarak (KM) : ');
  readln(jarak);

  //input status keanggotaan premium sebagai string
  write('Member Premium (True/False) : ');
  readln(memberPremiumInput);

  //konversi string menjadi boolean
  if (memberPremiumInput = 'True') or (memberPremiumInput = 'true') then
    memberPremium := true
  else
    memberPremium := false;

  //inisialisasi biaya awal
  biayaAwal := 20000;

  //hitung biaya tambahan berdasarkan jarak
  if jarak < 5 then
    biayaJarak := jarak * 5000
  else if (jarak >= 5) and (jarak <= 10) then
    biayaJarak := jarak * 4000
  else
    biayaJarak := jarak * 3000;

  //hitung total biaya sebelum diskon
  totalBiaya := biayaAwal + biayaJarak;

  //masukkan diskon utama jika total biaya lebih dari 100.000
  if totalBiaya > 100000 then
    diskonUtama := totalBiaya * 0.10
  else
    diskonUtama := 0;

  //hitung total setelah diskon utama diterapkan
  totalBiaya := totalBiaya - diskonUtama;

  //masukkan diskon tambahan jika Bernadya adalah member premium
  if memberPremium then
    diskonTambahan := totalBiaya * 0.05
  else
    diskonTambahan := 0;

  //hitung biaya akhir setelah semua diskon dimasukkan
  biayaAkhir := totalBiaya - diskonTambahan;

  //ouput biaya akhir yang harus dibayar Bernadya
  writeln('Total yang harus dibayar Bernadya: Rp', biayaAkhir:0:2);
end.
