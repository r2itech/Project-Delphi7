unit modul2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DDA: TButton;
    Bresenham: TButton;
    Polinom: TButton;
    Ulang: TButton;
    Keluar: TButton;
    edX1: TEdit;
    edY1: TEdit;
    edX2: TEdit;
    edY2: TEdit;
    edXawal: TEdit;
    edXakhir: TEdit;
    edA: TEdit;
    edB: TEdit;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Ulang1: TMenuItem;
    Keluar1: TMenuItem;
    Proses1: TMenuItem;
    DDA1: TMenuItem;
    Bresenham1: TMenuItem;
    Polinom1: TMenuItem;
    About1: TMenuItem;
    AboutApplication1: TMenuItem;
    Help1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure DDAClick(Sender: TObject);
    procedure UlangClick(Sender: TObject);
    procedure KeluarClick(Sender: TObject);
    procedure BresenhamClick(Sender: TObject);
    procedure PolinomClick(Sender: TObject);
    procedure edXawalChange(Sender: TObject);
    procedure edBChange(Sender: TObject);
    procedure edX1Change(Sender: TObject);
    procedure edY2Change(Sender: TObject);
    procedure Ulang1Click(Sender: TObject);
    procedure Keluar1Click(Sender: TObject);
    procedure DDA1Click(Sender: TObject);
    procedure Bresenham1Click(Sender: TObject);
    procedure Polinom1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var x,y:integer;
begin
//sumbu x
  for x:=0 to ClientWidth do
  canvas.Pixels[x,ClientHeight div 2]:= clRed;
//sumbu y
  for y:=0 to ClientHeight do
  canvas.Pixels[ClientWidth div 2,y]:= clBlue;
end;

procedure TForm1.DDAClick(Sender: TObject);
var k,delta,x0,y0,x1,y1,x2,y2:integer;
xNaik, yNaik,x,y:real;
begin
  x0:=clientWidth div 2;
  y0:=clientHeight div 2;
  x1:=StrToInt(edX1.Text);
  x2:=StrToInt(edX2.Text);
  y1:=StrToInt(edY1.Text);
  y2:=StrToInt(edY2.Text);
  for k:=0 to clientWidth do //sumbu x dan y (3)
  canvas.Pixels[k,y0]:=clGreen;
  for k:=0 to clientHeight do
  canvas.Pixels[x0,k]:=clRed;
  delta:=ABS(x2-x1); //persamaan metode DDA (4)
  if abs(y2-y1) > delta then
  delta:=abs(y2-y1);
  xNaik:=(x2-x1)/delta;
  yNaik:=(y2-y1)/delta;
  x:=x1;
  y:=y1;
  for k:=1 to delta do
  begin //menggambar garis (5)
  canvas.Pixels[Trunc(x0+x), Trunc(y0-y)]:=clBlue;
  x := x + xNaik;
  y := y + yNaik;
  end;

end;

procedure TForm1.UlangClick(Sender: TObject);
begin
edX1.Text:='';
edY1.Text:='';
edX2.Text:='';
edY2.Text:='';
edXawal.Text:='';
edXakhir.Text:='';
edA.Text:='';
edB.Text:='';
edX1.SetFocus;
edXakhir.Enabled:=false;
edA.Enabled:=false;
edB.Enabled:=false;
edY1.Enabled:=false;
edX2.Enabled:=false;
edY2.Enabled:=false;
DDA.Enabled:=false;
Bresenham.Enabled:=false;
Polinom.Enabled:=false;
end;

procedure TForm1.KeluarClick(Sender: TObject);
begin
close;
end;

procedure TForm1.BresenhamClick(Sender: TObject);
var x,y,k,e,deltay,deltax,x0,y0,x1,x2,y1,y2:integer;
begin
  x0:=clientWidth div 2;
  y0:=clientHeight div 2;
  x1:=StrToInt(edX1.Text);
  x2:=StrToInt(edX2.Text);
  y1:=StrToInt(edY1.Text);
  y2:=StrToInt(edY2.Text);
  deltax := abs(x2-x1);
  deltay := abs(y2-y1);
  e := (2*deltay)-deltax;
  x := x1;
  y := y1;
  for k:=1 to deltax do
  begin
  canvas.Pixels[x0+x, y0-y]:=clRed;
  if e > 0 then
  begin
  y := y+1;
  e := e+2 * (deltay-deltax);
  end
  else
  e := e + (2*deltay);
  x := x + 1;
  end;
end;

procedure TForm1.PolinomClick(Sender: TObject);
var x, xAwal, xAkhir, a, b, x0, y0, y : integer;
begin
  x0 := clientWidth div 2;
  y0 := clientHeight div 2;
  a := StrToInt(edA.Text);
  b := StrToInt(edB.Text);
  xAwal := StrToInt(edXawal.Text);
  xAkhir := StrToInt(edXakhir.Text);
  for x := xAwal to xAkhir do
  begin
  y := (a*x) + b;
  canvas.Pixels[x0+x, Trunc(y0-y)]:=clGreen;
  end;
end;

procedure TForm1.edXawalChange(Sender: TObject);
begin
edXakhir.Enabled:=true;
edA.Enabled:=true;
edB.Enabled:=true;
end;

procedure TForm1.edBChange(Sender: TObject);
begin
Polinom.Enabled:=true;
end;

procedure TForm1.edX1Change(Sender: TObject);
begin
edY1.Enabled:=true;
edX2.Enabled:=true;
edY2.Enabled:=true;
end;

procedure TForm1.edY2Change(Sender: TObject);
begin
DDA.Enabled:=true;
Bresenham.Enabled:=true;
end;

procedure TForm1.Ulang1Click(Sender: TObject);
begin
edX1.Text:='';
edY1.Text:='';
edX2.Text:='';
edY2.Text:='';
edXawal.Text:='';
edXakhir.Text:='';
edA.Text:='';
edB.Text:='';
edX1.SetFocus;
edXakhir.Enabled:=false;
edA.Enabled:=false;
edB.Enabled:=false;
edY1.Enabled:=false;
edX2.Enabled:=false;
edY2.Enabled:=false;
DDA.Enabled:=false;
Bresenham.Enabled:=false;
Polinom.Enabled:=false;
end;

procedure TForm1.Keluar1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.DDA1Click(Sender: TObject);
var k,delta,x0,y0,x1,y1,x2,y2:integer;
xNaik, yNaik,x,y:real;
begin
    x0:=clientWidth div 2;
  y0:=clientHeight div 2;
  x1:=StrToInt(edX1.Text);
  x2:=StrToInt(edX2.Text);
  y1:=StrToInt(edY1.Text);
  y2:=StrToInt(edY2.Text);
  for k:=0 to clientWidth do //sumbu x dan y (3)
  canvas.Pixels[k,y0]:=clGreen;
  for k:=0 to clientHeight do
  canvas.Pixels[x0,k]:=clRed;
  delta:=ABS(x2-x1); //persamaan metode DDA (4)
  if abs(y2-y1) > delta then
  delta:=abs(y2-y1);
  xNaik:=(x2-x1)/delta;
  yNaik:=(y2-y1)/delta;
  x:=x1;
  y:=y1;
  for k:=1 to delta do
  begin //menggambar garis (5)
  canvas.Pixels[Trunc(x0+x), Trunc(y0-y)]:=clBlue;
  x := x + xNaik;
  y := y + yNaik;
  end;
end;

procedure TForm1.Bresenham1Click(Sender: TObject);
var x,y,k,e,deltay,deltax,x0,y0,x1,x2,y1,y2:integer;
begin
  x0:=clientWidth div 2;
  y0:=clientHeight div 2;
  x1:=StrToInt(edX1.Text);
  x2:=StrToInt(edX2.Text);
  y1:=StrToInt(edY1.Text);
  y2:=StrToInt(edY2.Text);
  deltax := abs(x2-x1);
  deltay := abs(y2-y1);
  e := (2*deltay)-deltax;
  x := x1;
  y := y1;
  for k:=1 to deltax do
  begin
  canvas.Pixels[x0+x, y0-y]:=clRed;
  if e > 0 then
  begin
  y := y+1;
  e := e+2 * (deltay-deltax);
  end
  else
  e := e + (2*deltay);
  x := x + 1;
  end;
end;

procedure TForm1.Polinom1Click(Sender: TObject);
var x, xAwal, xAkhir, a, b, x0, y0, y : integer;
begin
  x0 := clientWidth div 2;
  y0 := clientHeight div 2;
  a := StrToInt(edA.Text);
  b := StrToInt(edB.Text);
  xAwal := StrToInt(edXawal.Text);
  xAkhir := StrToInt(edXakhir.Text);
  for x := xAwal to xAkhir do
  begin
  y := (a*x) + b;
  canvas.Pixels[x0+x, Trunc(y0-y)]:=clGreen;
  end;
end;

end.
