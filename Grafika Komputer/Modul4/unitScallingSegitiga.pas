unit unitScallingSegitiga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;
  //Deklarasi Konstanta
  Const N =3;
  //Deklarasi Matriks
  Type
  Matrik33 = array[1..3,1..3] of Real;
  Matrik3N = array[1..3,1..N] of Real;
type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    ButtonSegitiga: TButton;
    ButtonScalling: TButton;
    ButtonKeluar: TButton;
    eY: TEdit;
    Label4: TLabel;
    eX: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Obyek2D(Sender: TObject; var Obyek:Matrik3N);
    procedure MatrikScaling2D(Sender: TObject; var S:Matrik33; sx,sy:real);
    procedure ButtonSegitigaClick(Sender: TObject);
    procedure ButtonScallingClick(Sender: TObject);
    procedure ButtonKeluarClick(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure eYChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x0,y0:integer;
  Obyek:Matrik3N;
  S:Matrik33;
  a,b,sx,sy:real;

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
  for k:=0 to ClientWidth do //sumbu x
  canvas.Pixels[k,y0]:=clBlue;
  for k:=0 to ClientHeight do //sumbu y
  canvas.Pixels[x0,k]:=clRed;
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
var i,j:integer;
begin
  for i:= 1 to 2 do
  for j:= 1 to N do
  Obyek[i,j]:=StrToFloat(StringGrid1.Cells[j,i-1]);
  for j:= 1 to N do
  Obyek[3,j]:=1;
end;

procedure TForm1.MatrikScaling2D(Sender: TObject; var S:Matrik33; sx,sy:real);
begin
sx := StrToFloat(eX.text);
sy := StrToFloat(eY.text);
S[1,1]:=sx;
S[1,2]:=0;
S[1,3]:=0;
S[2,1]:=0;
S[2,2]:=sy;
S[2,3]:=0;
S[3,1]:=0;
S[3,2]:=0;
S[3,3]:=1;
end;

procedure MatrikKaliTransformasiObyek2D(var Obyek:Matrik3N; S:Matrik33);
var i,j,k:integer;
Hasil:Matrik3N;
begin
  for i:= 1 to 3 do
  for k:= 1 to N do
  begin
    Hasil[i,k]:=0;
    for j:=1 to 3 do
    Hasil[i,k]:=Hasil[i,k] + S[i,j]*Obyek[j,k];
  end;
  Obyek := Hasil;
end;

procedure TForm1.ButtonSegitigaClick(Sender: TObject);
begin
  Obyek2D(Sender,Obyek);
  canvas.MoveTo(trunc(X0+Obyek[1,1]), trunc(Y0-Obyek[2,1]));
  canvas.LineTo(trunc(X0+Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.MoveTo(trunc(X0+Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.LineTo(trunc(X0+Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.MoveTo(trunc(X0+Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.LineTo(trunc(X0+Obyek[1,1]), trunc(Y0-Obyek[2,1]));
end;

procedure TForm1.ButtonScallingClick(Sender: TObject);
begin
  Obyek2D(Sender,Obyek);
  MatrikScaling2D(Sender,S,sx,sy);
  MatrikKaliTransformasiObyek2D(Obyek,S);
  canvas.MoveTo(trunc(X0+Obyek[1,1]), trunc(Y0-Obyek[2,1]));
  canvas.LineTo(trunc(X0+Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.MoveTo(trunc(X0+Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.LineTo(trunc(X0+Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.MoveTo(trunc(X0+Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.LineTo(trunc(X0+Obyek[1,1]), trunc(Y0-Obyek[2,1]));
end;

procedure TForm1.ButtonKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.StringGrid1Click(Sender: TObject);
begin
  ButtonSegitiga.Enabled:=true;
end;

procedure TForm1.eYChange(Sender: TObject);
begin
   ButtonScalling.Enabled:=true;
end;

end.
