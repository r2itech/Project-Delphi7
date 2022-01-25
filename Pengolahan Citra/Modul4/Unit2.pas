unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    ButtonMuatCitra: TButton;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    EditN: TEdit;
    UpDownN: TUpDown;
    procedure ButtonMuatCitraClick(Sender: TObject);
    procedure UpDownNChanging(Sender: TObject; var AllowChange: Boolean);
  private
    procedure Proses;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Proses;
var
  x, y, w, h, N, i, j : integer;
  PC, PH : PByteArray;
  Ri, Gi, Bi, Ro, Go, Bo : array of array of byte;
  sumR, sumG, sumB, bobot : double;
begin
  N := StrToInt(EditN.Text);
  bobot := 1/((2*N+1)*(2*N+1));
  w := Image1.Picture.Width;
  h := Image1.Picture.Height;
  SetLength(Ri, w, h);
  SetLength(Gi, w, h);
  SetLength(Bi, w, h);
  SetLength(Ro, w, h);
  SetLength(Go, w, h);
  SetLength(Bo, w, h);
  for y:=0 to h-1 do
  begin
    PC := Image1.Picture.Bitmap.ScanLine[y];
    for x:=0 to w-1 do
    begin
      Ri[x,y] := PC[3*x+2];
      Gi[x,y] := PC[3*x+1];
      Bi[x,y] := PC[3*x];
    end;
  end;
  for y:=N to h-1-N do
    for x:=N to w-1-N do
    begin
      sumR := 0;
      sumG := 0;
      sumB := 0;
      for j:=-N to N do
        for i:=-N to N do
        begin
          sumR := sumR+Ri[x+i, y+j];
          sumG := sumG+Gi[x+i, y+j];
          sumB := sumB+Bi[x+i, y+j];
        end;
        Ro[x,y] := Round(bobot*sumR);
        Go[x,y] := Round(bobot*sumG);
        Bo[x,y] := Round(bobot*sumB);
    end;
  for y:=0 to h-1 do
  begin
    PH := Image2.Picture.Bitmap.ScanLine[y];
    for x:=0 to w-1 do
    begin
      PH[3*x+2] := Ro[x,y];
      PH[3*x+1] := Go[x,y];
      PH[3*x] := Bo[x,y];
    end;
  end;
  Ri := nil;
  Gi := nil;
  Bi := nil;
  Ro := nil;
  Go := nil;
  Bo := nil;
  Image2.Refresh;
end;

procedure TForm1.ButtonMuatCitraClick(Sender: TObject);
begin
  if (OpenPictureDialog1.Execute) then
  begin
    Image1.Picture.LoadFromFile(
    OpenPictureDialog1.FileName);
    Image2.Picture := Image1.Picture;
    Proses;
  end
end;

procedure TForm1.UpDownNChanging(Sender: TObject; var AllowChange: Boolean);
begin
  Proses;
end;

end.
