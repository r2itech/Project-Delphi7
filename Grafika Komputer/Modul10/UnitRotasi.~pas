unit UnitRotasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Shape1: TShape;
    Timer1: TTimer;
    orbit1: TShape;
    biru: TShape;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  theta,d,c:real;
  constanta:integer;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
  constanta:=5;
  biru.Visible:=true;
  Timer1.Enabled:=TRUE;
  theta:=0.0; c:=1/100;
  d:=2*PI;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var x1,y1:real;
begin
  if (theta<=(2*d)) then
  begin
    x1:=((orbit1.width)/2)+(orbit1.Left)+((orbit1.width)/2)*cos(6*theta);
    y1:=((orbit1.height/2)+(orbit1.top))-(orbit1.height/2)*sin(6*theta);
    biru.left:=trunc(x1)-constanta; biru.Top:=trunc(y1)-constanta;
    theta:=theta+c;
  end;
  if(theta>=2*d) then theta:=0.0;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;
end.

