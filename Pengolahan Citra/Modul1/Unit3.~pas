unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  if RadioButton1.Checked then
  begin
    Label1.Font.Color := clBlack;
  end
  else if RadioButton2.Checked then
  begin
    Label1.Font.Color := clRed;
  end
  else if RadioButton3.Checked then
  begin
    Label1.Font.Color := clGreen;
  end
  else if RadioButton4.Checked then
  begin
    Label1.Font.Color := clYellow;
  end
  else if RadioButton5.Checked then
  begin
    Label1.Font.Color := clBlue;
  end
end;

end.
