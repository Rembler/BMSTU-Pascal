unit N_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NA_Unit, NS_Unit;

type

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.Show;
  Form2.edit1.setfocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  form3.show;
  form3.edit1.setfocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close;
end;

end.
