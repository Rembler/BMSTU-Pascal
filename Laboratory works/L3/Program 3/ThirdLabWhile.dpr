program ThirdLabWhile;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,n,o:integer;

begin
  n:=0;
  readln(a);
  while (abs(a)>0) do
  begin
    o:=a mod 10;
    if (o mod 2<>0) then
      n:=n+1;
    a:=a div 10;
  end;
  writeln(n);
  readln;
end.
