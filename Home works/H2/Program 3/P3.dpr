program P3;

{$APPTYPE CONSOLE}

uses SysUtils;

var ch:set of char;
    st:string;
    i:integer;
    j:char;
    par:boolean;

begin
  writeln('Enter the string');
  readln(st);
  par:=false;
  for i := 1 to length(st) do
  begin
    if ((par=false) and (st[i]>'a')
    and (st[i]<='z') and (st[i]<>'e')
    and (st[i]<>'i') and (st[i]<>'o')
    and (st[i]<>'u') and (st[i]<>'y')) then
      ch:=ch+[st[i]];
    if ((st[i]=' ') and (par=false)) then
      par:=true
    else
      if ((st[i]=' ') and (par=true)) then
        par:=false;
    if ((st[i]<'A') or
    ((st[i]>'Z') and (st[i]<'a')) or
    (st[i]>'z')) then
      ch:=ch+[st[i]];
  end;
  writeln('Results:');
  for j := 'a' to 'z' do
    if j in ch then
      write(j,' ');
  for j := '!' to '`' do
    if j in ch then
      write(j,' ');
  for j := '{' to '~' do
    if j in ch then
      write(j,' ');
  if (ch=[' ']) then
    writeln('No elements');
  readln;
end.
