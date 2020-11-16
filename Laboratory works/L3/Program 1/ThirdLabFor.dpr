program ThirdLabFor;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b,n,m,o,i:integer;

begin
  n:=0;
  m:=0;
  readln(a);
  b:=a;
  repeat
    n:=n+1;
    a:=a div 10;
  until (a=0);
  for i:=0 to n do
  begin
    o:=b mod 10;
    if (o mod 2<>0) then
      m:=m+1;
    b:=b div 10;
  end;
  writeln(m);
  readln;
end.
