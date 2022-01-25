unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Videocap, StdCtrls, vfw, ExtDlgs;

type
  TForm1 = class(TForm)
    ButtonNamaFile: TButton;
    ButtonSimpan: TButton;
    ButtonClipboard: TButton;
    SavePictureDialog1: TSavePictureDialog;
    LabelNamaFile: TLabel;
    VideoCap1: TVideoCap;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ButtonNamaFileClick(Sender: TObject);
    procedure ButtonSimpanClick(Sender: TObject);
    procedure VideoCap1FrameCallback(sender: TObject; lpVhdr: PVIDEOHDR);
    procedure ButtonClipboardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Simpan : boolean;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  VideoCap1.DriverIndex := 0;
  VideoCap1.DriverOpen := true;
  VideoCap1.VideoPreview := true;
  Simpan := false;
end;

procedure TForm1.ButtonNamaFileClick(Sender: TObject);
begin
  if(SavePictureDialog1.Execute) then
    LabelNamaFile.Caption := SavePictureDialog1.FileName;
end;

procedure TForm1.ButtonSimpanClick(Sender: TObject);
begin
  Simpan := true;
  VideoCap1.GrabFrameNoStop;
end;

procedure TForm1.VideoCap1FrameCallback(sender: TObject; lpVhdr: PVIDEOHDR);
var
  info : TBitmapInfo;
begin
  if Simpan then
    begin
      info := VideoCap1.BitMapInfo;
      Image1.Canvas.Lock;
      FrameToBitmap(Image1.Picture.Bitmap, lpVhdr^.lpData, info);
      Image1.Canvas.TextOut(10, 10, DateTimetoStr(Now));
      Image1.Repaint;
      Image1.Canvas.Unlock;
      Image1.Picture.SaveToFile(LabelNamaFile.Caption);
      Simpan := false;
    end
end;

procedure TForm1.ButtonClipboardClick(Sender: TObject);
begin
  VideoCap1.SaveToClipboard;
end;

end.
