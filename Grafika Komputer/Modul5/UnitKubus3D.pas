unit UnitKubus3D;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eX: TEdit;
    eY: TEdit;
    eZ: TEdit;
    eSisi: TEdit;
    ButtonKubus: TButton;
    ButtonUlang: TButton;
    ButtonKeluar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Garis3D(Sender: TObject; x1,y1,z1,x2,y2,z2:integer);
    procedure ButtonKubusClick(Sender: TObject);
    procedure ButtonUlangClick(Sender: TObject);
    procedure ButtonKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x0,y0:integer;
  X3D, Y3D, X, Y, Z:integer;
  X3D1, Y3D1, X3D2, Y3D2:integer;

implementation

{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);
begin
  x0 := ClientWidth div 2;
  y0 := ClientHeight div 2;
end;

procedure TForm1.FormPaint(Sender: TObject);
var k : Integer;
begin
  for k := 1 to X0 do // sumbu x
  begin
    X3D := X0 + k; Y3D := Y0;
    Canvas.Pixels[X3D,Y3D]:= clBlue;
  end;
  for k := 1 to Y0 do // sumbu y
  begin
    X3D := X0; Y3D := Y0-k;
    Canvas.Pixels[X3D,Y3D]:= clRed;
  end;
  for k := 1 to X0 do // sumbu z
  begin
    X3D := X0 - k; Y3D := Y0+k div 2;
  Canvas.Pixels[X3D,Y3D]:= clGreen;
  end;
end;

procedure UbahKoordinat3D(var X3D,Y3D:Integer; X,Y,Z:Integer);
begin
  X3D := X0 + X - Z;
  Y3D := Y0 - Y + Z div 2;
end;

procedure TForm1.Garis3D(Sender: TObject; x1,y1,z1,x2,y2,z2:integer);
begin
  UbahKoordinat3D(X3D1,Y3D1,x1,y1,z1);
  UbahKoordinat3D(X3D2,Y3D2,x2,y2,z2);
  Canvas.MoveTo(X3D1,Y3D1);
  Canvas.LineTo(X3D2,Y3D2);
end;

procedure TForm1.ButtonKubusClick(Sender: TObject);
var
X,Y,Z,S :integer;
begin
  X := StrToInt(eX.Text);
  Y := StrToInt(eY.Text);
  Z := StrToInt(eZ.Text);
  S := StrToInt(eSisi.Text);
  Garis3D(Sender,X,Y,Z,X+S,Y,Z); // garis AB
  Garis3D(Sender,X,Y,Z,X,Y+S,Z); // garis AD
  Garis3D(Sender,X,Y,Z,X,Y,Z+S div 2); // garis AE
  Garis3D(Sender,X+S,Y,Z,X+S,Y,Z+S div 2); // garis BF
  Garis3D(Sender,X+S,Y,Z,X+S,Y+S,Z); // garis BC
  Garis3D(Sender,X+S,Y,Z+S div 2,X,Y,Z+S div 2); // garis FE
  Garis3D(Sender,X+S,Y,Z+S div 2,X+S,Y+S,Z+S div 2); // garis FG
  Garis3D(Sender,X,Y+S,Z,X,Y+S,Z+S div 2); // garis DH
  Garis3D(Sender,X,Y+S,Z,X+S,Y+S,Z); // garis DC
  Garis3D(Sender,X,Y+S,Z+S div 2,X,Y,Z+S div 2); // garis HE
  Garis3D(Sender,X,Y+S,Z+S div 2,X+S,Y+S,Z+S div 2); // garis HG
  Garis3D(Sender,X+S,Y+S,Z,X+S,Y+S,Z+S div 2);
end;

procedure TForm1.ButtonUlangClick(Sender: TObject);
begin
  Form1.Refresh;
  eX.Text:= ' ';
  eY.Text:= ' ';
  eZ.Text:= ' ';
  eSisi.Text:= ' ';
end;

procedure TForm1.ButtonKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
