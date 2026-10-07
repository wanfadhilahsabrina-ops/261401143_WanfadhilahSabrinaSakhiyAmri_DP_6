program Soal2;
uses crt;

var
  password: string;
  percobaan: integer;
  berhasil: boolean;

begin
  clrscr;
  password := 'pascal123';
  percobaan := 0;
  berhasil := false;
  repeat
    write('Masukkan kata sandi: ');
    readln(password);
    percobaan := percobaan + 1;
    if password = 'pascal123' then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Kata sandi salah!');
  until percobaan >= 3;
  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.
