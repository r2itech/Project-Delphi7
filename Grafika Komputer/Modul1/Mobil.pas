unit Mobil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
//Garis Vertical Kanan
canvas.moveto(700,100);
canvas.lineto(700,300);

//Garis Vertical Kiri
canvas.MoveTo(200,220);
canvas.LineTo(200,300);

//Garis Diagonal / Kap Depan
canvas.moveto(200,220);
canvas.lineto(300,170);

//Garis Vertical Tengah
canvas.MoveTo(300,100);
canvas.lineto(300,170);

//Garis Horizontal Atas
canvas.MoveTo(300,100);
canvas.lineto(700,100);

//Garis Horizontal Tengah
canvas.MoveTo(300,170);
canvas.lineto(700,170);

//Garis Horizontal Bawah/Belakang
canvas.moveto(700,300);
canvas.LineTo(650,300);

//Roda Belakang
canvas.ellipse(350,350,270,270);

//Roda Depan
canvas.ellipse(650,270,570,350);

//Garis Horizontal Bawah/Tengah
canvas.MoveTo(200,300);
canvas.lineto(270,300);

//Garis Horizontal Bawah/Depan
canvas.MoveTo(570,300);
canvas.lineto(350,300);
end;

end.
