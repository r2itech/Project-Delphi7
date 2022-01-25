unit UnitMobil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    bmplatar: TImage;
    bmpgerak: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  bmpgerak,bmplatar,bmplatar1:tbitmap;
  posisi:integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  posisi:=0;
end;



procedure TForm1.FormDestroy(Sender: TObject);
begin
  bmpgerak.Free;
  bmplatar.Free;
  bmplatar1.Free;
end;



procedure TForm1.Timer1Timer(Sender: TObject);
var
recttujuan,rectasal:trect;
begin
  rectasal:=rect(0,0,bmpgerak.width,bmpgerak.Height);
  recttujuan:=rect(posisi,185,posisi+bmpgerak.Width, 185+bmpgerak.Height);
  bmplatar.canvas.CopyRect(recttujuan,bmpgerak.Canvas,rectasal);
  Canvas.Draw(0,0,bmplatar1);
  posisi:=posisi+1;
  if posisi >= clientWidth then
  begin
    posisi:=0;
  end;
end;

end.
