program H4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x,y,z:real;
    l:boolean;

begin
  readln(x,y,z);
  if ((x>0) and (y<=0) and (z<=0)) then
    l:=true
  else
    if ((x<=0) and (y>0) and (z<=0)) then
      l:=true
    else
      if ((x<=0) and (y<=0) and (z>0)) then
        l:=true
      else
        l:=false;
  writeln(l);
  readln;
end.
