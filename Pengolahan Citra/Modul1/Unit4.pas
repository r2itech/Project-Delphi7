unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
  var bayar, totbay, kembali : real;
begin
  bayar := strtofloat(Edit5.Text);
  totbay := strtofloat(Edit4.Text);
  if bayar < totbay then
  begin
    Edit6.Text := 'Pembayaran Kurang!';
  end
  else
  begin
    kembali := bayar - totbay;
    Edit6.Text := floattostr(kembali);
  end
end;

procedure TForm4.Edit3Change(Sender: TObject);
  var harga, jumlah, bayar : real;
begin
  harga := strtofloat(Edit2.Text);
  jumlah := strtofloat(Edit3.Text);

  bayar := harga*jumlah;

  Edit4.Text := floattostr(bayar);
end;
end.
