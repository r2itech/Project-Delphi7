unit UnitSegitiga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
var
a, b:integer;
begin
a:=197;;
for b:=8 to 150 do
begin
Form1.Canvas.Pixels[a,b]:=clblue;
a:=a+1;
end;

b:=150;
for a:=55 to 197 do
begin
Form1.Canvas.Pixels[a,b]:=clgreen;
b:=b-1;
end;

b:=150;
for a:=55 to 338 do
begin
Form1.Canvas.Pixels[a,b]:=clred;
b:=b;
end;
end;
end.
