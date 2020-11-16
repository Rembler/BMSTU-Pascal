program EighthLab;

{$APPTYPE CONSOLE}

uses SysUtils;

var f,g:file of integer;
    a,n,i:integer;

begin
  assignfile(f,'F.pas');
  assignfile(g,'G.pas');
  writeln('Enter number of elements');
  readln(n);
  writeln('Enter the elements');
  rewrite(f);
  for i := 1 to n do
  begin
    read(a);
    write(f,a);
  end;
  writeln('File "F.pas" contains:');
  rewrite(g);
  reset(f);
  while (eof(f)=false) do
  begin
    read(f,a);
    write(a,' ');
    if (a mod 2<>0) then
      write(g,a);
  end;
  writeln;
  reset(g);
  writeln('File "G.txt" contains:');
  while (eof(g)=false) do
  begin
    read(g,a);
    write(a,' ');
  end;
  close(g);
  close(f);
  readln;
  readln;
end.
