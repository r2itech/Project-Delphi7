unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    procedure Label4Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm5.Label4Click(Sender: TObject);
begin
  Close;
  form1.close;
end;

procedure TForm5.Label2Click(Sender: TObject);
begin
  Close;
  form1.Button1.Enabled := true;
  form1.Button11.Enabled := true;
  form1.Button12.Enabled := true;
  form1.eRusuk.Enabled := true;
  form1.PanelTranslasi.Enabled:=true;
  form1.PanelSkala.Enabled:=true;
  form1.PanelRotasi.Enabled:=true;
end;

end.
