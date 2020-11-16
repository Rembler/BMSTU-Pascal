program ThirdLabUntil;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,n,o:integer;

begin
  n:=0;
  readln(a);
  repeat
    o:=a mod 10;
    if (o mod 2<>0) then
      n:=n+1;
    a:=a div 10;
  until (a=0);
  writeln(n);
  readln;
end.
