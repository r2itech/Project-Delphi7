unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var a, b, c : integer;
begin
  a := strtoint(Edit1.Text);
  b := strtoint(Edit2.Text);

  c := a+b;

  Edit3.Text := inttostr(c);
end;

procedure TForm2.Button2Click(Sender: TObject);
var a, b, c : integer;
begin
  a := strtoint(Edit1.Text);
  b := strtoint(Edit2.Text);

  c := a-b;

  Edit3.Text := inttostr(c);
end;

procedure TForm2.Button3Click(Sender: TObject);
var a, b, c : integer;
begin
  a := strtoint(Edit1.Text);
  b := strtoint(Edit2.Text);

  c := a*b;

  Edit3.Text := inttostr(c);
end;

procedure TForm2.Button4Click(Sender: TObject);
var a, b: integer; c : real;
begin
  a := strtoint(Edit1.Text);
  b := strtoint(Edit2.Text);

  c := a/b;

  Edit3.Text := floattostr(c);
end;

end.
