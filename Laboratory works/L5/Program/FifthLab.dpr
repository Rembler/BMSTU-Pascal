program FifthLab;

{$APPTYPE CONSOLE}

uses SysUtils;

var a:array[1..3,1..12] of char;
    i,j:integer;

begin
  for i := 1 to 3 do
    for j := 1 to 12 do
      read(a[i,j]);
  readln;
  for i := 1 to 4 do
  begin
    for j := 1 to 3 do
      write(a[j,i],' ');
    write(' ');
    for j := 1 to 3 do
      write(a[j,i+4],' ');
    write(' ');
    for j := 1 to 3 do
      write(a[j,i+8],' ');
    writeln;
  end;
  readln;
end.
