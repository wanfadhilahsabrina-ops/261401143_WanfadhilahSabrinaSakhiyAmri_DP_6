program Soal3;
uses crt;

var
  N, angka, pilihan: integer;

begin
  clrscr;
  writeln(' PROGRAM DERET ANGKA ');
  write('Masukkan N: ');
  readln(N);
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori: ');
  readln(pilihan);
  angka := 1;
  writeln('Hasil deret:');
  while angka <= N do
  begin
    if (pilihan = 1) and (angka mod 2 = 0) then
    begin
      angka := angka + 1;
      continue;
    end;
    if (pilihan = 2) and (angka mod 2 <> 0) then
    begin
      angka := angka + 1;
      continue;
    end;
    if angka mod 5 = 0 then
    begin
      angka := angka + 1;
      continue;
    end;
    write(angka, ' ');
    angka := angka + 1;
  end;
  writeln;
end.