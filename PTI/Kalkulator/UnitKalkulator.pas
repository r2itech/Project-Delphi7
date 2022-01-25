unit UnitKalkulator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
var a,b,c:integer;
begin
a := StrtoInt(edit1.Text);
b := StrtoInt(edit2.Text);
c := a + b;
edit3.Text := InttoStr(c);
end;
procedure TForm1.Button3Click(Sender: TObject);
var a,b,c:integer;
begin
a:= StrtoInt (Edit1.Text);
b:= StrtoInt (Edit2.Text);
c:= a*b;
Edit3.Text := InttoStr(c);
end;
procedure TForm1.Button2Click(Sender: TObject);
var a,b,c:real;
begin
a:= StrtoFloat (Edit1.Text);
b:= StrtoFloat (Edit2.Text);
c:=a/b;
Edit3.Text := FloattoStr(c);
end;
end.
