program VerifikasiSandi;
const
  SANDI = 'pascal123';
var
  masukan: string;
  percobaan: integer;
  berhasil: boolean;
begin
  percobaan := 0;
  berhasil := false;

  repeat
    percobaan := percobaan + 1;
    write('Masukkan kata sandi (percobaan ', percobaan, '/3): ');
    readln(masukan);

    if masukan = SANDI then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Kata sandi salah.');
  until percobaan >= 3;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
  readln;
end.