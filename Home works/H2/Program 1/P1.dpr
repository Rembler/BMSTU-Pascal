program P1;

{$APPTYPE CONSOLE}

uses SysUtils;

var a:array[1..100] of real;
    i,j,l:integer;
    buf:real;
    use:boolean;

begin
  writeln('Enter number of elements');
  readln(l);
  writeln('Enter elements');
  for i := 1 to l do
    read(a[i]);
  writeln('Original array:');
  for i := 1 to l do
    write(a[i]:4:2,' ');
  writeln;
  j:=0;
  repeat
    use:=false;
    j:=j+1;
    for i := 1 to l-j do
      if (a[i]<a[i+1]) then
      begin
        buf:=a[i+1];
        a[i+1]:=a[i];
        a[i]:=buf;
        use:=true;
      end;
  until (use=false);
  writeln('New array:');
  for i := 1 to l do
    write(a[i]:4:2,' ');
  readln;
  readln;
end.
