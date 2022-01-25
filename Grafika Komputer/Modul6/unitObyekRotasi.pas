unit unitObyekRotasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Menus;

type
  Matrik44 = array[1..4,1..4] of Real;
  Matrik4N = array[1..4,1..20] of Real;
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    eSegi: TEdit;
    eSudut: TEdit;
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    About1: TMenuItem;
    Help1: TMenuItem;
    Obyek1: TMenuItem;
    Rotasi1: TMenuItem;
    Exit1: TMenuItem;
    Refresh1: TMenuItem;
    SumbuX1: TMenuItem;
    SumbuY1: TMenuItem;
    SumbuZ1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure MatrikObyek3D(Sender: TObject; var Obyek3D :Matrik4N);
    procedure GambarObyek3D(Sender : TObject; Obyek3D :Matrik4N);
    procedure eSegiChange(Sender: TObject);
    procedure Obyek1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure SumbuZ1Click(Sender: TObject);
    procedure SumbuY1Click(Sender: TObject);
    procedure SumbuX1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Obyek2D,R3:Matrik44;
  Obyek3D :Matrik4N;
  N: Integer;
  sudut:real;
  X3D, Y3D, X, Y, Z:integer;
  X3D1, Y3D1, X3D2, Y3D2:integer;
  Tv3 :Matrik44;
  a,b,c:real;
  x0,y0:Integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  x0 := ClientWidth div 2; // lebar layar maksimum
  y0 := ClientHeight div 2; // tinggi layar maksimum
  with StringGrid1 do
  begin
    Cells[0,0]:='X';
    Cells[0,1]:='Y';
    Cells[0,2]:='Z';
  end;
end;

procedure TForm1.FormPaint(Sender: TObject);
var k : integer;
begin
  for k := 1 to X0 do // sumbu x
  begin
    X3D := X0 + k; Y3D := Y0; Canvas.Pixels[X3D,Y3D]:= clBlue;
  end;
  for k := 1 to Y0 do // sumbu y
  begin
    X3D := X0; Y3D := Y0-k; Canvas.Pixels[X3D,Y3D]:= clRed;
  end;
  for k := 1 to X0 do // sumbu z
  begin
    X3D := X0 - k; Y3D := Y0+k div 2; Canvas.Pixels[X3D,Y3D]:= clGreen;
  end;
end;

procedure UbahKoordinatObyek3D(var Obyek2D : Matrik44; Obyek3D : Matrik4N);
var i : integer;
begin
  for i := 1 to N do
  begin
    Obyek2D[1,i] := X0 + Obyek3D[1,i] - Obyek3D[3,i]; // koordinat 3D
    Obyek2D[2,i] := Y0 - Obyek3D[2,i] + Obyek3D[3,i] / 2;
  end;
end;

procedure TForm1.MatrikObyek3D(Sender: TObject; var Obyek3D : Matrik4N);
var i,j : integer;
begin
  N := StrToInt(eSegi.Text);
  for i := 1 to 3 do
  for j := 1 to N do
  Obyek3D[i,j] := StrToInt(StringGrid1.Cells[j,i-1]);
  for j := 1 to N do Obyek3D[4,j] :=1;
end;

procedure TForm1.GambarObyek3D(Sender : TObject; Obyek3D : Matrik4N);
var i : integer;
begin
UbahKoordinatObyek3D(Obyek2D,Obyek3D);
  for i := 1 to N-1 do
  begin
    Canvas.MoveTo(trunc(Obyek2D[1,i]), trunc(Obyek2D[2,i]));
    Canvas.LineTo(trunc(Obyek2D[1,i+1]), trunc(Obyek2D[2,i+1]));
  end;
  Canvas.MoveTo(trunc(Obyek2D[1,N]), trunc(Obyek2D[2,N]));
  Canvas.LineTo(trunc(Obyek2D[1,1]), trunc(Obyek2D[2,1]));
end;

//Matriks Rotasi X,Y,Z
procedure MatrikRotasiSumbuZ(var R : Matrik44; sudut: real);
var radian : real;
begin
  radian := sudut / 180 * 3.14;
  R[1,1] := cos(radian); R[1,2] := -sin(radian); R[1,3] := 0 ; R[1,4] := 0;
  R[2,1] := sin(radian); R[2,2] := cos(radian); R[2,3] := 0 ; R[2,4] := 0;
  R[3,1] := 0 ; R[3,2] := 0 ; R[3,3] := 1 ; R[3,4] := 0;
  R[4,1] := 0 ; R[4,2] := 0 ; R[4,3] := 0 ; R[4,4] := 1;
end;

procedure MatrikRotasiSumbuY(var R : Matrik44; sudut: real);
var radian : real;
begin
  radian := sudut / 180 * 3.14;
  R[1,1] := cos(radian); R[1,2] := 0; R[1,3] := sin(radian) ; R[1,4] := 0;
  R[2,1] := 0; R[2,2] := 1; R[2,3] := 0 ; R[2,4] := 0;
  R[3,1] := -sin(radian); R[3,2] := 0 ; R[3,3] := cos(radian) ; R[3,4] := 0;
  R[4,1] := 0 ; R[4,2] := 0 ; R[4,3] := 0 ; R[4,4] := 1;
end;

procedure MatrikRotasiSumbuX(var R : Matrik44; sudut: real);
var radian : real;
begin
  radian := sudut / 180 * 3.14;
  R[1,1] := 1; R[1,2] := 0; R[1,3] := 0 ; R[1,4] := 0;
  R[2,1] := 0; R[2,2] := cos(radian); R[2,3] := -sin(radian) ; R[2,4] := 0;
  R[3,1] := 0 ; R[3,2] := sin(radian) ; R[3,3] := cos(radian) ; R[3,4] := 0;
  R[4,1] := 0 ; R[4,2] := 0 ; R[4,3] := 0 ; R[4,4] := 1;
end;

procedure MatrikKaliTransformasiObyek3D(var Obyek : Matrik4N; Tr : Matrik44);
var i,j,k : integer; Hasil : matrik4N;
begin
  for i := 1 to 4 do
  for k := 1 to N do
  begin
    Hasil [i,k] := 0;
    for j := 1 to 4 do
    Hasil[i,k] := Hasil[i,k] + Tr[i,j] * Obyek[j,k];
  end;
  Obyek := Hasil;
end;

procedure TForm1.eSegiChange(Sender: TObject);
begin
  if eSegi.Text='' then
  begin
    eSegi.SetFocus;
    StringGrid1.ColCount:=2; StringGrid1.RowCount:=3;
  end
  else
  begin
    n:=StrToInt(eSegi.Text); StringGrid1.ColCount:=N+1;
    StringGrid1.RowCount:=3;
  end;
end;

procedure TForm1.Obyek1Click(Sender: TObject);
begin
  MatrikObyek3D(Sender,Obyek3D); GambarObyek3D(Sender,Obyek3D);
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Refresh1Click(Sender: TObject);
var i,j : integer;
begin
  N := StrToInt(eSegi.Text);
  Form1.Refresh;
  eSegi.Text:='';
  eSudut.Text:='';
  for i := 1 to 3 do
  for j := 1 to N do
  StringGrid1.Cells[j,i-1]:='';
end;

procedure TForm1.SumbuZ1Click(Sender: TObject);
begin
  sudut:=StrToFloat(eSudut.Text);
  MatrikObyek3D(Sender,Obyek3D);
  MatrikRotasiSumbuZ(R3,sudut);
  MatrikKaliTransformasiObyek3D(Obyek3D,R3);
  Canvas.Pen.Color := clGreen;
  GambarObyek3D(Sender,Obyek3D);
end;

procedure TForm1.SumbuY1Click(Sender: TObject);
begin
  sudut:=StrToFloat(eSudut.Text);
  MatrikObyek3D(Sender,Obyek3D);
  MatrikRotasiSumbuY(R3,sudut);
  MatrikKaliTransformasiObyek3D(Obyek3D,R3);
  Canvas.Pen.Color := clGreen;
  GambarObyek3D(Sender,Obyek3D);
end;

procedure TForm1.SumbuX1Click(Sender: TObject);
begin
  sudut:=StrToFloat(eSudut.Text);
  MatrikObyek3D(Sender,Obyek3D);
  MatrikRotasiSumbuX(R3,sudut);
  MatrikKaliTransformasiObyek3D(Obyek3D,R3);
  Canvas.Pen.Color := clGreen;
  GambarObyek3D(Sender,Obyek3D);
end;

end.
