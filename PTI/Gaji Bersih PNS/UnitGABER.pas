unit UnitGABER;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit6: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Edit7: TEdit;
    Label14: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
Edit1.Enabled := True;
Edit2.Enabled := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Enabled := False;
Edit2.Enabled := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
var a,b,c:integer;
begin
a := StrtoInt (Edit1.Text)*500000;
b := StrtoInt (Edit2.Text)*250000;
Edit3.Text := '3000000';
Edit4.Text := '700000';
Edit5.Text := InttoStr (a);
Edit6.Text := InttoStr (b);
c := 3000000 + 700000 + a + b;
edit7.Text := InttoStr(c);
end;

procedure TForm1.Button4Click(Sender: TObject);
var a,b,c:integer;
begin
a := StrtoInt (Edit1.Text)*500000;
b := StrtoInt (Edit2.Text)*250000;
Edit3.Text := '2500000';
Edit4.Text := '600000';
Edit5.Text := InttoStr (a);
Edit6.Text := InttoStr (b);
c := 2500000 + 600000 + a + b;
edit7.Text := InttoStr(c);
end;

procedure TForm1.Button5Click(Sender: TObject);
var a,b,c:integer;
begin
a := StrtoInt (Edit1.Text)*500000;
b := StrtoInt (Edit2.Text)*250000;
Edit3.Text := '2000000';
Edit4.Text := '500000';
Edit5.Text := InttoStr (a);
Edit6.Text := InttoStr (b);
c := 2000000 + 500000 + a + b;
edit7.Text := InttoStr(c);
end;

end.
