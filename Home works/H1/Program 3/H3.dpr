program H3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x,s,c,sum,eps:real;

begin
  eps:=0.000001;
  readln(x);
  s:=sin(x);
  c:=cos(x);
  sum:=s*s+c*c;
  if (sum-1<=eps) then
    writeln('Equality is correct')
  else
    writeln('Equality is not correct');
  readln;
end.
