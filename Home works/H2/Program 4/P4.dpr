program P4;

{$APPTYPE CONSOLE}

uses
  SysUtils, Func;

var i,fl,n:integer;
    a,b,s:real;

function fsin(x:real):real;
begin
  result:=sin(x)/x;
end;

function ftan(x:real):real;
begin
  result:=(sin(x+1)/cos(x+1))/(x+1);
end;

begin
  writeln('Enter "1" if you want sin(x)/x');
  writeln('Enter "2" if you want tan(x+1)/(x+1)');
  readln(fl);
  writeln('Enter left and right borders');
  readln(a,b);
  writeln('Enter step');
  readln(n);
  if (fl=1) then
    intg(s,a,b,n,fsin)
  else
    intg(s,a,b,n,ftan);
  writeln('Result is ',s:5:3);
  readln;
end.
