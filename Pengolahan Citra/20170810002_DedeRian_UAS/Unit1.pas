unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Menus, ExtDlgs;

type
  TForm1 = class(TForm)
    CheckBoxCenter: TCheckBox;
    CheckBoxStretch: TCheckBox;
    CheckBoxProportional: TCheckBox;
    CheckBoxAutoSize: TCheckBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Proses1: TMenuItem;
    MasukanCitra1: TMenuItem;
    Keluar1: TMenuItem;
    Simpan1: TMenuItem;
    Keabuan1: TMenuItem;
    Negatif1: TMenuItem;
    AnalisisSobel1: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image3: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    TrackBarMerah: TTrackBar;
    TrackBarHijau: TTrackBar;
    TrackBarBiru: TTrackBar;
    CheckBoxSeragam: TCheckBox;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure MasukanCitra1Click(Sender: TObject);
    procedure Keluar1Click(Sender: TObject);
    procedure CheckBoxCenterClick(Sender: TObject);
    procedure CheckBoxStretchClick(Sender: TObject);
    procedure CheckBoxProportionalClick(Sender: TObject);
    procedure CheckBoxAutoSizeClick(Sender: TObject);
    procedure Keabuan1Click(Sender: TObject);
    procedure Negatif1Click(Sender: TObject);
    procedure AnalisisSobel1Click(Sender: TObject);
    procedure TrackBarMerahChange(Sender: TObject);
    procedure TrackBarHijauChange(Sender: TObject);
    procedure TrackBarBiruChange(Sender: TObject);
    procedure Simpan1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Proses;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  gambar: Tbitmap; mampat: Tbitmap; akhir: Tbitmap;

implementation

{$R *.dfm}

procedure TForm1.MasukanCitra1Click(Sender: TObject);
begin
  if not OpenPictureDialog1.Execute then
    exit
  else
  begin
    gambar := TBitmap.Create;
    gambar.LoadFromFile(OpenPictureDialog1.FileName);
    Form1.Caption := 'Image Processing - ' +ExtractFileName(OpenPictureDialog1.FileName);
    TrackBarMerah.Position := 0;
    TrackBarHijau.Position := 0;
    TrackBarBiru.Position := 0;
  end;
    Image1.Picture.Bitmap := gambar;
    Image2.Picture := Image1.Picture;
    Simpan1.Enabled := true;
    Keabuan1.Enabled := true;
    Negatif1.Enabled := true;
    AnalisisSobel1.Enabled := true;
    CheckBoxCenter.Enabled := true;
    CheckBoxStretch.Enabled := true;
    CheckBoxProportional.Enabled := true;
    CheckBoxAutoSize.Enabled := true;
    TrackBarMerah.Enabled := true;
    TrackBarBiru.Enabled := true;
    TrackBarHijau.Enabled := true;
end;

procedure TForm1.Keluar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.CheckBoxCenterClick(Sender: TObject);
begin
  Image2.Center := CheckBoxCenter.Checked;
end;

procedure TForm1.CheckBoxStretchClick(Sender: TObject);
begin
  Image2.Stretch := CheckBoxStretch.Checked;
end;

procedure TForm1.CheckBoxProportionalClick(Sender: TObject);
begin
  Image2.Proportional := CheckBoxProportional.Checked;
end;

procedure TForm1.CheckBoxAutoSizeClick(Sender: TObject);
begin
  Image2.AutoSize := CheckBoxAutoSize.Checked;
end;

procedure TForm1.Keabuan1Click(Sender: TObject);
var
  PC, PH : PByteArray;
  x, y : integer;
  R, G, B, K : byte;
begin
  for y:=0 to Image1.Picture.Height-1 do
  begin
    PC := Image1.Picture.Bitmap.ScanLine[y];
    PH := Image2.Picture.Bitmap.ScanLine[y];
    for x:=0 to Image1.Picture.Width-1 do
    begin
      R := PC[3*x+2];
      G := PC[3*x+1];
      B := PC[3*x];
      K := Round((R+G+B)/3);
      PH[3*x+2] := K;
      PH[3*x+1] := K;
      PH[3*x] := K;
    end;
  end;
  Image2.Refresh;
  Label2.Caption := 'Keabuan';
end;

procedure TForm1.Negatif1Click(Sender: TObject);
var
  PC, PH : PByteArray;
  x, y : integer;
begin
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
    Label2.Caption := 'Negatif';
end;

procedure TForm1.AnalisisSobel1Click(Sender: TObject);
const
  sobel : array[0..1, 0..2, 0..2] of smallint =(((-1,0,1),(-2,0,2),(-1,0,1)),
                                              ((-1,-2,-1),(0,0,0),(1,2,1)));
  prewit : array[0..1, 0..2, 0..2] of smallint =(((-1,0,1),(-1,0,1),(-1,0,1)),
                                              ((-1,-1,-1),(0,0,0),(1,1,1)));
var
  row : array[0..8] of pbytearray;
  col : pbytearray;
  i,j,k,p, x,y : smallint;
  image : tbitmap;
  sum,jum : longint;

begin
  P := -120;
  Keabuan1.Click;
  image := tbitmap.Create;
  Image.Assign(gambar);
  for y:=1 to gambar.Height-2 do
  begin
    for i:=-1 to 1 do
      row[i+1] := Image.ScanLine[y+i];
      col := gambar.ScanLine[y];
      x:=3;
    repeat
      sum := 0;
      for i:=-1 to 1 do
        for j:=-1 to 1 do
          sum := sum+(sobel[0, i+1, j+1] * row[i+1, x+j*3]);
      jum := 0;
      for i:=-1 to 1 do
        for j:=-1 to 1 do
          jum := jum+(sobel[1, i+1, j+1] * row[i+1, x+j*3]);
      sum := (sum+jum) + p;
      if sum>255 then
        sum := 255;
      if sum<0 then
        sum := 0;
      for k:=0 to 2 do
        col[x+k] := sum;
    inc(x,3);
    until x>=3*(gambar.Width-4);
  end;
  Image2.Picture.Bitmap := gambar;
  Label2.Caption := 'Sobel';
  Image.Free;
end;

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
  Label2.Caption := 'Custom Kecemerlangan';
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

procedure TForm1.Simpan1Click(Sender: TObject);
begin
  Image2.Picture.Bitmap.SaveToFile(Label2.Caption +'.bmp');
  Image2.Refresh;
  Image3.Picture := Image2.Picture;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Simpan1.Enabled := false;
  Keabuan1.Enabled := false;
  Negatif1.Enabled := false;
  AnalisisSobel1.Enabled := false;
  CheckBoxCenter.Enabled := false;
  CheckBoxStretch.Enabled := false;
  CheckBoxProportional.Enabled := false;
  CheckBoxAutoSize.Enabled := false;
  TrackBarMerah.Enabled := false;
  TrackBarBiru.Enabled := false;
  TrackBarHijau.Enabled := false;
end;

end.
