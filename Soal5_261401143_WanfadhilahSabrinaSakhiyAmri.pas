program Soal5;
uses crt;

var
  M, N, i, j: integer;
  nilai, total, rata: real;
  lulus, tidakLulus: integer;

begin
clrscr;
  writeln('REKAPITULASI NILAI');
  write('Jumlah mahasiswa: ');
  readln(M);
  write('Jumlah tugas: ');
  readln(N);
  lulus := 0;
  tidakLulus := 0;
  for i := 1 to M do
  begin
    total := 0;
    writeln;
    writeln('Mahasiswa ke-', i);
    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;
    rata := total / N;
    writeln('Rata-rata = ', rata:0:2);
    if rata >= 65 then
    begin
      writeln('Status = LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('Status = TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;
  writeln;
  writeln('=== HASIL AKHIR ===');
  writeln('Total LULUS       : ', lulus);
  writeln('Total TIDAK LULUS : ', tidakLulus);
end.