program Flashlight;

{$APPTYPE CONSOLE}

uses SysUtils;

type
  tlant = object
  private
    state:string;
  public
    procedure init(sdata:string);
    procedure onoff;
    procedure sort(sdata:string);
    function info:string;
  end;

procedure tlant.init;
begin
  self.state:=sdata;
end;

procedure tlant.onoff;
begin
  if (self.state='ON') then
    self.state:='OFF'
  else
    self.state:='ON';
end;

procedure tlant.sort;
begin
  if (sdata='PRESS') then
    tlant.onoff
  else if (sdata='INFO') then
       tlant.info;
end;

function tlant.info;
begin
  writeln('The current state is ',self.state);
end;

var flt:tlant;
    inp:string;
begin
  writeln('Set starting state of the flashlight: ON or OFF');
  readln(inp);
  while (inp<>'ON') and (inp<>'OFF') do
  begin
    writeln('It is not "ON" or "OFF". Try again, it is not that hard.');
    readln(inp);
  end;
  flt.init(inp);
  writeln('You can change state of the flashlight by pressing the button.');
  writeln('For that just type "PRESS".');
  writeln('If you want to know the current state of the flashlight type "INFO".');
  writeln('You also can leave that flashlight alone.');
  writeln('To do so type "EXIT".');
  while (inp<>'EXIT') do
  begin
    readln(inp);
    flt.sort(inp);
  end;
  writeln('You left room with the flashlight. Goodbye.');
  readln;
  end.
