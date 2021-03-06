unit unit_rotasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;
  Const N = 3;

type
    Matrik33 = array[1..3,1..3] of real;
    Matrik3N = array[1..3,1..N] of real;
    TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    eSudut: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Obyek2D(Sender: TObject; var Obyek:Matrik3N);
    procedure MatrikRotasi2D(Sender: TObject; var R:Matrik33; sudut:real);
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
  x0,y0:integer;
  Obyek:Matrik3N;
  R:Matrik33;
  a,b,sudut:real;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
x0 := ClientWidth div 2;
y0 := ClientHeight div 2;
end;

procedure TForm1.FormPaint(Sender: TObject);
var k:integer;
begin
  for k:=0 to ClientWidth do canvas.Pixels[k,y0] := clBlue;
  for k:=0 to ClientHeight do canvas.Pixels[x0,k] := clRed;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  with StringGrid1 do
  begin
    Cells[0,0]:='X';
    Cells[0,1]:='Y';
  end;
end;

procedure TForm1.Obyek2D(Sender: TObject; var Obyek:Matrik3N);
var i,j : integer;
begin
  for i:=1 to 2 do
  for j:=1 to N do
  Obyek[i,j]:=StrToFloat(StringGrid1.Cells[j,i-1]);
  for j:=1 to N do
  Obyek[3,j]:=1;
end;

procedure TForm1.MatrikRotasi2D(Sender: TObject; var R:Matrik33; sudut:real);
var Radian:real;
begin
  sudut:=StrToFloat(eSudut.Text);
  Radian := sudut / 180 * 3.14;
  R[1,1]:=cos(Radian);
  R[1,2]:=sin(Radian);
  R[1,3]:=0;
  R[2,1]:=sin(Radian);
  R[2,2]:=cos(Radian);
  R[2,3]:=0;
  R[3,1]:=0;
  R[3,2]:=0;
  R[3,3]:=1;
end;

procedure MatrikKaliTransformasiObyek2D(var Obyek:Matrik3N; R:Matrik33);
var i,j,k:integer; Hasil:matrik3N;
begin
  for i:=1 to 3 do
  for k:=1 to N do
  begin
    Hasil[i,k]:=0;
    for j:=1 to 3 do
    Hasil[i,k]:=Hasil[i,k]+R[i,j] * Obyek[j,k];
  end;
  Obyek:=Hasil;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Obyek2D(Sender,Obyek);
  canvas.MoveTo(trunc(X0+Obyek[1,1]), trunc(Y0-Obyek[2,1]));
  canvas.LineTo(trunc(X0+Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.MoveTo(trunc(X0+Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.LineTo(trunc(X0+Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.MoveTo(trunc(X0+Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.LineTo(trunc(X0+Obyek[1,1]), trunc(Y0-Obyek[2,1]));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Obyek2D(Sender,Obyek);
  MatrikRotasi2D(Sender,R,sudut);
  MatrikKaliTransformasiObyek2D(Obyek,R);

  canvas.MoveTo(trunc(X0+Obyek[1,1]), trunc(Y0-Obyek[2,1]));
  canvas.LineTo(trunc(X0+Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.MoveTo(trunc(X0+Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.LineTo(trunc(X0+Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.MoveTo(trunc(X0+Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.LineTo(trunc(X0+Obyek[1,1]), trunc(Y0-Obyek[2,1]));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
