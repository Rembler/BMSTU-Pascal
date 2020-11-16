program Note;

uses
  Forms,
  N_Unit in 'N_Unit.pas' {Form1},
  NA_Unit in 'NA_Unit.pas' {Form2},
  NS_Unit in 'NS_Unit.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
