unit UnitChartMhs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TeEngine, Series, TeeProcs, Chart, ExtCtrls,
  DbChart;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ButtonTampilkan: TBitBtn;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Timer1: TTimer;
    Button1: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonTampilkanClick(Sender: TObject);
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
      addxy(xvalues.Last+tmp,YValues.Last+random(100)-5,'',clteecolor);
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

procedure TForm1.ButtonTampilkanClick(Sender: TObject);
begin
  MessageDlg('PERKEMBANGAN MAHASISWA UNIKU',mtInformation,[MBOK],0);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

end.
