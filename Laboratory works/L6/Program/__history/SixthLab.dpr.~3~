program SixthLab;

{$APPTYPE CONSOLE}

uses SysUtils;

var s:string;
    i,n:integer;
    o:boolean;

begin
  readln(s);
  n:=0;
  if ((s[1]>='A') and (s[1]<='Z'))then
  begin
    o:=true;
    write(s[1]);
    n:=n+1;
  end
  else
    o:=false;
  for i := 2 to length(s)-1 do
  begin
    if ((o=true) and (s[i]=',')) then
    begin
      o:=false;
      write(' ');
    end;
    if ((s[i-1]=' ') and (s[i]>='A') and (s[i]<='Z')) then
    begin
      o:=true;
      n:=n+1;
    end;
    if (o=true) then
      write(s[i]);
  end;
  writeln;
  writeln(n);
  readln;
end.
