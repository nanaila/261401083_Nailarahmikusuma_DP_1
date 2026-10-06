program TokoBuku;
{ Soal 1: total belanja + diskon bertingkat (for-to-do, if-else) }
var
  n, i: integer;
  harga: array[1..100] of real;
  total, diskon, bayar, persen: real;
begin
  write('Jumlah barang yang dibeli (N): ');
  readln(n);

  total := 0;
  for i := 1 to n do
  begin
    write('Harga barang ke-', i, ': Rp');
    readln(harga[i]);
    total := total + harga[i];
  end;

  if total < 100000 then
    persen := 0
  else if total < 500000 then
    persen := 10
  else
    persen := 20;

  diskon := total * persen / 100;
  bayar := total - diskon;

  writeln;
  writeln('===== RINCIAN BELANJA =====');
  for i := 1 to n do
    writeln('Barang ke-', i, ' : Rp', harga[i]:0:0);
  writeln('---------------------------');
  writeln('Total Sebelum Diskon : Rp', total:0:0);
  writeln('Besar Diskon (', persen:0:0, '%) : Rp', diskon:0:0);
  writeln('Total Bayar Akhir    : Rp', bayar:0:0);
  readln;
end.