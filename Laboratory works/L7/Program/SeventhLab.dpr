program SeventhLab;

{$APPTYPE CONSOLE}

uses SysUtils;

var n,i:integer;
    si1,si2:boolean;

function sim(a:integer):boolean;
var pi,co:integer;
begin
  co:=0;
  for pi:=1 to a do
    if (a mod pi=0) then
      co:=co+1;
  if ((co=2) or (a=1)) then
    result:=true
  else
    result:=false;
end;

begin
  readln(n);
  i:=0;
  si1:=false;
  si2:=false;
  writeln(n);
  while ((si1=false) or (si2=false)) do
  begin
    i:=i+1;
    si1:=sim(i);
    si2:=sim(n-i);
  end;
  writeln(i,' ',n-i);
  readln;
end.
