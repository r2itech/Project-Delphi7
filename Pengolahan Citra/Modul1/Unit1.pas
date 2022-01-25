unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button3: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit: TMenuItem;
    Refresh: TMenuItem;
    Exit: TMenuItem;
    Modifikasi: TMenuItem;
    Modifikasi1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure ModifikasiClick(Sender: TObject);
    procedure Modifikasi1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Font.Color := clGreen;
  Label1.Caption := 'BELAJAR PENGOLAHAN CITRA MUDAH';
  Refresh.Enabled := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Label1.Color := clRed;
  Refresh.Enabled := true;
end;

procedure TForm1.ExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.RefreshClick(Sender: TObject);
begin
  Label1.Caption := 'SELAMAT BELAJAR PENGOLAHAN CITRA';
  Label1.Font.Color := clWindowText;
  Label1.Color := clBtnFace;
  Refresh.Enabled := false;
end;

procedure TForm1.ModifikasiClick(Sender: TObject);
begin
  Label1.Font.Color := clGreen;
  Label1.Caption := 'BELAJAR PENGOLAHAN CITRA MUDAH';
  Refresh.Enabled := true;
end;

procedure TForm1.Modifikasi1Click(Sender: TObject);
begin
  Label1.Color := clRed;
  Refresh.Enabled := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Refresh.Enabled := false;
end;

end.
