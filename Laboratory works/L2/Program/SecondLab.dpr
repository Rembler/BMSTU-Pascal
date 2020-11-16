program SecondLab;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var rs1,rs2,x,y:real;

begin
  readln(x,y);
  rs1:=sqrt(x*x+y*y);
  rs2:=sqrt((x+1)*(x+1)+y*y);
  if (rs1<=1) and (rs2<=1) then
    Writeln('In the area')
  else
    Writeln('Out the area');
  readln;
end.
