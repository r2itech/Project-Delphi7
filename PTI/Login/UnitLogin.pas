unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UnitLogin2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if (edit1.text='dederian105') and (edit2.text='scienceiseverything') then
begin
  showmessage ('Login Berhasil===Selamat Datang' +edit1.text);
  form2.show;
  exit;
end
else
  Application.MessageBox('Login Gagal===', 'warning', mb_OK or mb_iconwarning);
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

end.
