program Soal1;
uses crt;

{ Toko Buku: total belanja N barang dengan diskon bertingkat (for-to-do, if-else) }
var
  n, i, persen : integer;
  harga : array[1..1000] of real;
  total, diskon, bayar : real;

begin
clrscr;
  write('Masukkan jumlah barang (N): ');
  readln(n);

  total := 0;
  for i := 1 to n do
  begin
    write('Harga barang ke-', i, ': Rp');
    readln(harga[i]);
    total := total + harga[i];
  end;

  { Penentuan diskon }
  if total < 100000 then
    persen := 0
  else if total < 500000 then
    persen := 10
  else
    persen := 20;

  diskon := total * persen / 100;
  bayar  := total - diskon;

  writeln;
  writeln(' RINCIAN BELANJA ');
  for i := 1 to n do
    writeln('Barang ke-', i, ' : Rp', harga[i]:0:0);
  writeln('---------------------------');
  writeln('Total Sebelum Diskon : Rp', total:0:0);
  writeln('Diskon (', persen, '%)        : Rp', diskon:0:0);
  writeln('Total Bayar Akhir    : Rp', bayar:0:0);
  readln;
end.