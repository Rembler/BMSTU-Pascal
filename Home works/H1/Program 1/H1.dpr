program H1;

{$APPTYPE CONSOLE}

uses SysUtils;

Var y:real;

begin
  y:=1;
  WriteLn('Before conversions y=',y:20:16);
  y:=y/6000;
  y:= exp(y);                  {y = e^x}
  y:= sqrt(y);                 { вадратный корень}
  y:=y/14;
  y:=14*y;
  y:=sqr(y);                  {Y = y2}
  y:=ln(y);
  y:=6000*y;
  WriteLn('After conversions  y=', y:20:16);
  Readln;
end.
