unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    ButtonMuatCitra: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    TrackBarMerah: TTrackBar;
    TrackBarHijau: TTrackBar;
    TrackBarBiru: TTrackBar;
    CheckBoxSeragam: TCheckBox;
    Image1: TImage;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure ButtonMuatCitraClick(Sender: TObject);
    procedure TrackBarMerahChange(Sender: TObject);
    procedure TrackBarHijauChange(Sender: TObject);
    procedure TrackBarBiruChange(Sender: TObject);
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
  PC, PH : PByteArray;
  x, y, cR, cG, cB, Ro, Go, Bo :integer;
begin
  cR := TrackBarMerah.Position;
  cG := TrackBarHijau.Position;;
  cB := TrackBarBiru.Position;;
  for y:=0 to Image1.Picture.Height-1 do
  begin
    PC := Image1.Picture.Bitmap.ScanLine[y];
    PH := Image2.Picture.Bitmap.ScanLine[y];
    for x:=0 to Image1.Picture.Width-1 do
    begin
      Ro := PC[3*x+2]+cR;
      if(Ro < 0) then
        Ro := 0;
      if(Ro > 255) then
        Ro := 255;
      Go := PC[3*x+1]+cG;
      if(Go < 0) then
        Go := 0;
      if(Go > 255) then
        Go := 255;
      Bo := PC[3*x]+cB;
      if(Bo < 0) then
        Bo := 0;
      if(Bo > 255) then
        Bo := 255;
      PH[3*x+2] := Ro;
      PH[3*x+1] := Go;
      PH[3*x] := Bo;
    end;
  end;
  Image2.Refresh;
end;

procedure TForm1.ButtonMuatCitraClick(Sender: TObject);
begin
  if (OpenPictureDialog1.Execute) then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    Image2.Picture := Image1.Picture;
    TrackBarMerah.Position := 0;
    TrackBarHijau.Position := 0;
    TrackBarBiru.Position := 0;
  end
end;

procedure TForm1.TrackBarMerahChange(Sender: TObject);
begin
  if CheckBoxSeragam.Checked then
  begin
    TrackbarHijau.Position := TrackBarMerah.Position;
    TrackbarBiru.Position := TrackBarMerah.Position;
  end;
  Proses;
end;

procedure TForm1.TrackBarHijauChange(Sender: TObject);
begin
  if CheckBoxSeragam.Checked then
  begin
    TrackbarMerah.Position := TrackBarHijau.Position;
    TrackbarBiru.Position := TrackBarHijau.Position;
  end;
  Proses;
end;

procedure TForm1.TrackBarBiruChange(Sender: TObject);
begin
  if CheckBoxSeragam.Checked then
  begin
    TrackbarMerah.Position := TrackBarBiru.Position;
    TrackbarHijau.Position := TrackBarBiru.Position;
  end;
  Proses;
end;

end.
