program H2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x,y,y1,y2:real;

begin
  Readln(x);
  y1:=(exp(x)-exp(-1*x))/2;
  y2:=(exp(x)+exp(-1*x))/2;
  Writeln('y1=',y1:20:16);
  Writeln('y2=',y2:20:16);
  y:=y2*y2-y1*y1;
  Writeln('y=',y:30:26);
  Readln;
end.
