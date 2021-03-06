unit prak3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, ExtCtrls, StdCtrls, Menus;

type
  TForm3 = class(TForm)
    ButtonMuatCitra: TButton;
    CheckBoxCenter: TCheckBox;
    CheckBoxStretch: TCheckBox;
    CheckBoxProportional: TCheckBox;
    CheckBoxAutoSize: TCheckBox;
    ButtonUkuranSemula: TButton;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    MainMenu1: TMainMenu;
    MUATCITRA1: TMenuItem;
    File1: TMenuItem;
    file2: TMenuItem;
    OPERASI1: TMenuItem;
    center: TMenuItem;
    stretch: TMenuItem;
    proportional: TMenuItem;
    autosize: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ButtonMuatCitraClick(Sender: TObject);
    procedure CheckBoxCenterClick(Sender: TObject);
    procedure CheckBoxStretchClick(Sender: TObject);
    procedure CheckBoxProportionalClick(Sender: TObject);
    procedure CheckBoxAutoSizeClick(Sender: TObject);
    procedure ButtonUkuranSemulaClick(Sender: TObject);
    procedure File1Click(Sender: TObject);
    procedure file2Click(Sender: TObject);
    procedure centerClick(Sender: TObject);
    procedure stretchClick(Sender: TObject);
    procedure proportionalClick(Sender: TObject);
    procedure autosizeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  LebarAwal:integer;
  TinggiAwal:integer;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  LebarAwal := Image1.Width;
  TinggiAwal := Image1.Height;
end;

procedure TForm3.ButtonMuatCitraClick(Sender: TObject);
begin
  if(OpenPictureDialog1.Execute) then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end
end;

procedure TForm3.CheckBoxCenterClick(Sender: TObject);
begin
  Image1.Center := CheckBoxCenter.Checked;
end;

procedure TForm3.CheckBoxStretchClick(Sender: TObject);
begin
  Image1.Stretch := CheckBoxStretch.Checked;
end;

procedure TForm3.CheckBoxProportionalClick(Sender: TObject);
begin
  Image1.Proportional := CheckBoxProportional.Checked;
end;

procedure TForm3.CheckBoxAutoSizeClick(Sender: TObject);
begin
  Image1.AutoSize := CheckBoxAutoSize.Checked;
end;

procedure TForm3.ButtonUkuranSemulaClick(Sender: TObject);
begin
  Image1.Center := false;
  Image1.Stretch := false;
  Image1.Proportional := false;
  Image1.AutoSize := false;

  CheckBoxCenter.Checked := false;
  CheckBoxStretch.Checked := false;
  CheckBoxProportional.Checked := false;
  CheckBoxAutoSize.Checked := false;
  
  Image1.Width := LebarAwal;
  Image1.Height := TinggiAwal;
end;

procedure TForm3.File1Click(Sender: TObject);
begin
  if(OpenPictureDialog1.Execute) then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end
end;

procedure TForm3.file2Click(Sender: TObject);
begin
  form3.Close;
end;

procedure TForm3.centerClick(Sender: TObject);
begin
  Image1.Center := true;
  CheckBoxCenter.Checked := true;
end;

procedure TForm3.stretchClick(Sender: TObject);
begin
  Image1.Stretch := true;
  CheckBoxStretch.Checked := true;
end;

procedure TForm3.proportionalClick(Sender: TObject);
begin
  Image1.Proportional := true;
  CheckBoxProportional.Checked := true;;
end;

procedure TForm3.autosizeClick(Sender: TObject);
begin
  Image1.AutoSize := true;
  CheckBoxAutoSize.Checked := true;
end;

end.
