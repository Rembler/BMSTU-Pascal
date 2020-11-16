program Cone;

{$APPTYPE CONSOLE}

uses SysUtils;

type TCone = object
private
  height,radius:integer;
public
  procedure init(ghei:integer; grad:integer);
  procedure info;
  function volume:real;
  function square:real;
end;

procedure tcone.init;
begin
  height:=ghei;
  radius:=grad;
end;

procedure tcone.info;
begin
  writeln('Height of the cone is ',height);
  writeln('Radius of the cone is ',radius);
end;

function tcone.square;
begin
  result:=radius*radius*pi;
end;

function tcone.volume;
begin
  result:=(1/3)*square*height;
end;

type TConoid = object (TCone)
private
  mirad:integer;
public
  procedure newinit(ghei:integer; grad:integer; gmirad:integer);
  procedure newinfo;
  function newvol:real;
  function squsur:real;
end;

procedure tconoid.newinit;
begin
  init(ghei,grad);
  mirad:=gmirad;
end;

procedure tconoid.newinfo;
begin
  info;
  writeln('Small radius of the conoid is ',mirad);
end;

function tconoid.newvol;
begin
  result:=volume-(1/3)*height*(mirad/radius)*pi*mirad*mirad;
end;

function tconoid.squsur;
var misqu,mihei:real;
begin
  misqu:=pi*mirad*mirad;
  mihei:=height*(1-mirad/radius);
  result:=square+misqu+(sqrt(mihei*mihei+(radius-mirad)*(radius-mirad))*pi*(radius+mirad));
end;

var fig:tconoid;
    inp:string;
    inph,inpr,inpmr:integer;
begin
  writeln('Enter height, big radius and small radius of conoid');
  readln(inph,inpr,inpmr);
  fig.newinit(inph,inpr,inpmr);
  writeln('The following actions are available to you:');
  writeln('"CONE VOLUME" - show volume of a cone.');
  writeln('"CONOID VOLUME" - show volume of a conoid.');
  writeln('"CONE BASE" - show base area of a cone.');
  writeln('"CONOID SQUARE" - show surface area of a conoid.');
  writeln('"INFO" - show information about cone sizes.');
  writeln('"EXIT" - close program.');
  readln(inp);
  while (inp<>'EXIT') do
  begin
    if (inp='CONE VOLUME') then
      writeln(fig.volume:6:4)
    else if (inp='CONOID VOLUME') then
        writeln(fig.newvol:6:4)
      else if (inp='CONE BASE') then
          writeln(fig.square:6:4)
        else if (inp='CONOID SQUARE') then
            writeln(fig.squsur:6:4)
          else if (inp='INFO') then
              fig.newinfo;
    readln(inp);
  end;
end.
