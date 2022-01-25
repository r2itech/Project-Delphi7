
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Videocap, ExtDlgs, vfw, StdCtrls;

type
  TForm1 = class(TForm)
    ButtonNamaFile: TButton;
    ButtonSimpan: TButton;
    ButtonFormat: TButton;
    ButtonKompresi: TButton;
    Label1: TLabel;
    Label2: TLabel;
    LabelNamaFile: TLabel;
    EditLama: TEdit;
    EditIndeks: TEdit;
    SavePictureDialog1: TSavePictureDialog;
    VideoCap1: TVideoCap;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ButtonNamaFileClick(Sender: TObject);
    procedure ButtonSimpanClick(Sender: TObject);
    procedure ButtonFormatClick(Sender: TObject);
    procedure ButtonKompresiClick(Sender: TObject);
    procedure VideoCap1StatusCallback(Sender: TObject; nID: Integer;
      status: String);
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
begin
  VideoCap1.DriverIndex := 0;
  VideoCap1.DriverOpen := true;
  VideoCap1.VideoPreview := true;
end;

procedure TForm1.ButtonNamaFileClick(Sender: TObject);
begin
  if(SavePictureDialog1.Execute) then
  LabelNamaFile.Caption := SavePictureDialog1.FileName;
end;

procedure TForm1.ButtonSimpanClick(Sender: TObject);
begin
  VideoCap1.VideoFileName := LabelNamaFile.Caption;
  if VideoCap1.CapInProgess then
    begin
      VideoCap1.StopCapture;
      ButtonSimpan.Caption := 'Simpan';
    end
  else
    begin
      VideoCap1.CapTimeLimit := StrToInt(EditLama.Text);
      VideoCap1.CapIndexSize := StrToInt(EditIndeks.Text);
      VideoCap1.StartCapture;
      ButtonSimpan.Caption := 'Stop';
    end
end;

procedure TForm1.ButtonFormatClick(Sender: TObject);
var
  lebar : integer;
begin
  if VideoCap1.HasDlgFormat then
  begin
    VideoCap1.DlgVFormat;
    VideoCap1.Width := VideoCap1.BitMapInfoHeader.biWidth;
    VideoCap1.Height := VideoCap1.BitMapInfoHeader.biHeight;
    lebar := VideoCap1.Left+VideoCap1.Width+18;
    if lebar>510 then
      Width := lebar
    else
      Width := 510;
      Height := VideoCap1.Top+VideoCap1.Height+42;
  end
end;

procedure TForm1.ButtonKompresiClick(Sender: TObject);
begin
  VideoCap1.DlgVCompression;
end;


procedure TForm1.VideoCap1StatusCallback(Sender: TObject; nID: Integer; status: String);
begin
  if nID = IDS_CAP_End then
    ButtonSimpan.Caption := 'Simpan';
end;

end.
 