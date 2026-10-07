program Soal4;
uses crt;

var
  pilihan: integer;
  angka1, angka2, hasil: real;
  a, b, hasilDiv, hasilMod: integer;
  ulang: char;

begin
clrscr;
  repeat
    writeln('KALKULATOR');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi: ');
    readln(pilihan);
    if pilihan = 5 then
    begin
      write('Masukkan angka pertama: ');
      readln(a);
      write('Masukkan angka kedua: ');
      readln(b);
    end
    else
    begin
      write('Masukkan angka pertama: ');
      readln(angka1);
      write('Masukkan angka kedua: ');
      readln(angka2);
    end;
    case pilihan of
      1:
        begin
          hasil := angka1 + angka2;
          writeln('Hasil = ', hasil:0:2);
        end;
      2:
        begin
          hasil := angka1 - angka2;
          writeln('Hasil = ', hasil:0:2);
        end;
      3:
        begin
          hasil := angka1 * angka2;
          writeln('Hasil = ', hasil:0:2);
        end;
      4:
        begin
          if angka2 <> 0 then
          begin
            hasil := angka1 / angka2;
            writeln('Hasil = ', hasil:0:2);
          end
          else
            writeln('Tidak dapat membagi dengan nol.');
        end;
      5:
        begin
          if b <> 0 then
          begin
            hasilDiv := a div b;
            hasilMod := a mod b;
            writeln('Hasil DIV = ', hasilDiv);
            writeln('Hasil MOD = ', hasilMod);
          end
          else
            writeln('Tidak dapat membagi dengan nol.');
        end;
    else
      writeln('Pilihan tidak tersedia.');
    end;
    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
    writeln;
  until (ulang = 'T') or (ulang = 't');
end.
