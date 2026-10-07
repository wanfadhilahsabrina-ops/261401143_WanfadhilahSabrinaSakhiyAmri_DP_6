program Soal8;
uses crt;

var
  golongan: char;
  jamKerja, jamLembur: integer;
  gajiPokok, lembur, bonus, totalGaji: longint;

begin
  clrscr;
  writeln('PROGRAM GAJI KARYAWAN');
  write('Golongan (A/B/C): ');
  readln(golongan);
  write('Total jam kerja per minggu: ');
  readln(jamKerja);
  case golongan of
    'A', 'a':
      gajiPokok := 1500000;
    'B', 'b':
      gajiPokok := 2000000;
    'C', 'c':
      gajiPokok := 2500000;
  else
    begin
      writeln('Golongan tidak valid.');
      exit;
    end;
  end;
  if jamKerja > 40 then
    jamLembur := jamKerja - 40
  else
    jamLembur := 0;
  lembur := jamLembur * 20000;
  bonus := 0;
  if ((golongan = 'C') or (golongan = 'c')) and (jamKerja > 50) then
    bonus := 100000;
  totalGaji := gajiPokok + lembur + bonus;
  writeln;
  writeln('Gaji Pokok : Rp', gajiPokok);
  writeln('Lembur     : Rp', lembur);
  writeln('Bonus      : Rp', bonus);
  writeln('Total Gaji : Rp', totalGaji);
end.
