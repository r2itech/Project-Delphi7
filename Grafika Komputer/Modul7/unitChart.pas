unit unitChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBChart1: TDBChart;
    Timer1: TTimer;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
Var i: longint;
tmp: double;
begin
  with DBChart1 do
  begin
    for i := 0 to seriescount-1 do
    with Series[i] do
    begin
      tmp := xvalues[1] - xvalues[0]; delete(0);
      addxy(xvalues.Last+tmp,YValues.Last+random(100)-50,'',clteecolor);
    end; repaint
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
var i,j : integer;
begin
  with DBChart1 do
  for i := 0 to SeriesCount-1 do
  for j := 1 to 15 do
  series[i].AddXY(j,random(5),'',clteecolor);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MessageDlg('20170810002 | Dede Rian | TI2017B',mtInformation,[MBOK],0);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

end.
