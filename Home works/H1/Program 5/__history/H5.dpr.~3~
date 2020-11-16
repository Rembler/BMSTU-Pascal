program H5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var x,sn,s,e,eps:real;
    i,n:integer;

begin
  readln(eps);
  x:=0.5;
  sn:=0;
  n:=1;
  repeat
    s:=sn;
    e:=1;
    for i:=1 to 2*n-1 do
      e:=e*x;
    e:=e/(2*n-1);
    if (n mod 2=0) then
      e:=-e;
    sn:=s+e;
    n:=n+1;
  until (abs(sn-s)<=eps);
  writeln(sn:20:18);
  readln;
end.
