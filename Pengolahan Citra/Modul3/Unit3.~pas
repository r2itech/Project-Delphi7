unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    ButtonMuatCitra: TButton;
    Image1: TImage;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure ButtonMuatCitraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonMuatCitraClick(Sender: TObject);
var
  PC, PH : PByteArray;
  x, y : integer;
begin
  if(OpenPictureDialog1.Execute) then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    Image2.Picture := Image1.Picture;
    for y:=0 to Image1.Picture.Height-1 do
    begin
      PC := Image1.Picture.Bitmap.ScanLine[y];
      PH := Image2.Picture.Bitmap.ScanLine[y];
      for x:=0 to Image1.Picture.Width-1 do
      begin
        PH[3*x+2] := 255-PC[3*x+2];
        PH[3*x+1] := 255-PC[3*x+1];
        PH[3*x] := 255-PC[3*x];
      end;
    end;
    Image2.Refresh;
  end
end;

end.
