unit Rumah;

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
//Garis Vertical Kiri
canvas.MoveTo(400,200);
canvas.LineTo(400,400);

//Garis Vertical Kanan
canvas.MoveTo(600,200);
canvas.LineTo(600,400);

//Garis Horizontal Tengah
canvas.MoveTo(400,200);
canvas.LineTo(600,200);

//Garis Horizontal Bawah
canvas.MoveTo(400,400);
canvas.LineTo(600,400);

//Garis Diagonal Kiri
canvas.MoveTo(450,150);
canvas.LineTo(400,200);

//Garis Diagonal Kanan
canvas.MoveTo(550,150);
canvas.LineTo(600,200);

//Garis Horizontal Atas
canvas.MoveTo(450,150);
canvas.LineTo(550,150);
end;

end.
