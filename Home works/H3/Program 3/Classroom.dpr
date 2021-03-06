program Classroom;

{$APPTYPE CONSOLE}

uses SysUtils;

type
  TMan = object
  private
    fam:string;
    year:integer;
    mark:byte;
  public
    procedure init(gf:string; gy:integer; gm:byte);
    procedure info;
    function age:integer;
  end;

procedure tman.init;
begin
  fam:=gf;
  year:=gy;
  mark:=gm;
end;

procedure tman.info;
begin
  writeln('Surname: ',fam);
  writeln('Year of birth: ',year);
  writeln('Average mark: ',mark);
  writeln;
end;

function tman.age;
begin
  result:=2019-year;
end;

type
  TClass = object
  private
    pupil:array[1..20] of tman;
    num:byte;
  public
    procedure massinit(gn:byte; var a);
    procedure massinfo;
    function piv:byte;
    function bota:real;
  end;

procedure tclass.massinit;
var pi:integer;
    b:array[1..20] of tman absolute a;
begin
  num:=gn;
  for pi := 1 to num do
    pupil[pi].init(b[pi].fam, b[pi].year, b[pi].mark);
end;

procedure tclass.massinfo;
var pi:integer;
begin
  for pi := 1 to num do
    pupil[pi].info;
end;

function tclass.piv;
var pi,n:integer;
begin
  n:=0;
  for pi := 1 to num do
  begin
    if (pupil[pi].age>=18) then
      n:=n+1;
  end;
  result:=n;
end;

function tclass.bota;
var pi,n:integer;
begin
  n:=0;
  for pi := 1 to num do
    if (pupil[pi].mark=5) then
      n:=n+1;
  result:=n/num;
end;

var mas:array[1..20] of tman;
    inpn,i:integer;
    idi:tclass;
    inp:string;
begin
  writeln('Enter number of students');
  readln(inpn);
  writeln('Enter ',inpn,' surnames of students');
  randomize;
  for i := 1 to inpn do
  begin
    readln(mas[i].fam);
    mas[i].year:=random(6)+2000;
    mas[i].mark:=random(5)+1;
  end;
  idi.massinit(inpn,mas);
  writeln('You can choose between this actions:');
  writeln('1 - show number of adult students.');
  writeln('2 - show percentage of excellent students.');
  writeln('INFO - show informations about all students.');
  writeln('EXIT - close program.');
  readln(inp);
  while (inp<>'EXIT') do
  begin
    if (inp='1') then
      writeln('There are ',idi.piv,' adult student(s).')
    else if (inp='2') then
        writeln('There are ',idi.bota*100:3:0,'% excellent students.')
      else if (inp='INFO') then
           idi.massinfo;
    readln(inp);
  end;
end.
