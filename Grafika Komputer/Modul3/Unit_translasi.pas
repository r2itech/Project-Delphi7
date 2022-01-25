unit Unit_translasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;
  Const N = 3;
type
  Matrik33 = array[1..3,1..3] of Real;
  Matrik3N = array[1..3,1..N] of Real;
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eNilaiA: TEdit;
    eNilaiB: TEdit;
    Segitiga: TButton;
    Translasi: TButton;
    Ulang: TButton;
    Keluar: TButton;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Obyek2D(Sender: TObject; var Obyek:Matrik3N);
    procedure MatrikTranslasi2D(Sender: TObject; var Tv : Matrik33; a,b:real);
    procedure SegitigaClick(Sender: TObject);
    procedure TranslasiClick(Sender: TObject);
    procedure UlangClick(Sender: TObject);
    procedure KeluarClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1; x0,y0:integer; Obyek:Matrik3N; Tv:Matrik33; a,b:real;

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
  for i:=1 to 2 do
  for j:=1 to N do
  Obyek[i,j]:=StrToFloat(StringGrid1.Cells[j,i-1]);
  for j:=1 to N do
  Obyek[3,j]:=1;
end;

Procedure TForm1.MatrikTranslasi2D(Sender: TObject; var Tv : Matrik33; a,b:real);
begin
  a:=StrToFloat(eNilaiA.Text);
  b:=StrToFloat(eNilaiB.Text);
  Tv[1,1]:=1; Tv[1,2]:=0; Tv[1,3]:=a;
  Tv[2,1]:=0; Tv[2,2]:=1; Tv[2,3]:=b;
  Tv[3,1]:=0; Tv[3,2]:=0; Tv[3,3]:=1;
end;

Procedure MatrikKaliTransformasiObyek2D(var Obyek: Matrik3N; Tr:Matrik33);
var i,j,k:integer;
Hasil : Matrik3N;
begin
   for i:=1 to 3 do
   for k:=1 to N do
   begin
   Hasil[i,k]:=0;
   for j:=1 to 3 do
   Hasil[i,k]:=Hasil[i,k] + Tr[i,j] * Obyek[j,k];
   end;
   Obyek := Hasil;
end;



procedure TForm1.SegitigaClick(Sender: TObject);
begin
  Obyek2D(Sender, obyek);
  canvas.MoveTo(trunc(X0+Obyek[1,1]),trunc(Y0-Obyek[2,1]));
  canvas.LineTo(trunc(X0 + Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.MoveTo(trunc(X0+Obyek[1,2]),trunc(Y0-Obyek[2,2]));
  canvas.LineTo(trunc(X0 + Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.MoveTo(trunc(X0+Obyek[1,3]),trunc(Y0-Obyek[2,3]));
  canvas.LineTo(trunc(X0 + Obyek[1,1]), trunc(Y0-Obyek[2,1]));
end;

procedure TForm1.TranslasiClick(Sender: TObject);
begin
  Obyek2D(Sender, obyek);
  MatrikTranslasi2D(Sender,Tv,a,b);
  MatrikKaliTransformasiObyek2D(Obyek,Tv);
  canvas.MoveTo(trunc(X0+Obyek[1,1]),trunc(Y0-Obyek[2,1]));
  canvas.LineTo(trunc(X0 + Obyek[1,2]), trunc(Y0-Obyek[2,2]));
  canvas.MoveTo(trunc(X0+Obyek[1,2]),trunc(Y0-Obyek[2,2]));
  canvas.LineTo(trunc(X0 + Obyek[1,3]), trunc(Y0-Obyek[2,3]));
  canvas.MoveTo(trunc(X0+Obyek[1,3]),trunc(Y0-Obyek[2,3]));
  canvas.LineTo(trunc(X0 + Obyek[1,1]), trunc(Y0-Obyek[2,1]));
end;

procedure TForm1.UlangClick(Sender: TObject);
var i,j : integer;
begin
  Form1.Refresh;
  eNilaiA.Text:='';
  eNilaiB.Text:='';
  for i:=1 to 2 do
  for j:=1 to 3 do
  StringGrid1.Cells[j,i-1]:='';
end;

procedure TForm1.KeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
