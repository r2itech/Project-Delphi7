unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    PanelSkala: TPanel;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    PanelTranslasi: TPanel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PanelRotasi: TPanel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Button7: TButton;
    Button8: TButton;
    GroupBox2: TGroupBox;
    Button5: TButton;
    Button6: TButton;
    GroupBox3: TGroupBox;
    Button10: TButton;
    Button9: TButton;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button11: TButton;
    eRusuk: TEdit;
    Button12: TButton;
    Label1: TLabel;
    Button13: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation
uses unit2, unit3, Unit4, Unit5;
{$R *.dfm}
 var
    form2  : TForm2;
    ok     : boolean;
    perintah : integer;

procedure TForm1.Button1Click(Sender: TObject);
var lop:integer;
begin
     ok := true;
     PanelTranslasi.Enabled:=true;
     PanelSkala.Enabled:=true;
     PanelRotasi.Enabled:=true;
     Button2.Enabled := false;
     init(form2, StrToInt(eRusuk.Text));
     gambar(figur1);
     while ok do begin
           case perintah of
                1 : scaling(figur1,1.04);
                2 : scaling(figur1,0.96);
                3 : rotasi(figur1,0,1,0);
                4 : rotasi(figur1,0,-1,0);
                5 : rotasi(figur1,1,0,0);
                6 : rotasi(figur1,-1,0,0);
                7 : rotasi(figur1,0,0,1);
                8 : rotasi(figur1,0,0,-1);
                9 : translasi(figur1,0,5,0);
               10 : translasi(figur1,-5,0,0);
               11 : translasi(figur1,5,0,0);
               12 : translasi(figur1,0,-5,0);
            end;
           if perintah <> 0 then gambar(figur1);
           //for ax := 1 to 1000000 do begin
           application.processMessages;
           //a :=Sin(ax) + a;
        for lop:=1 to 100000000 do;
           //end;
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //ok := false;
  //close;
  form5.show;
  Button1.Enabled := false;
  Button11.Enabled := false;
  Button12.Enabled := false;
  eRusuk.Enabled := false;
  PanelTranslasi.Enabled:=false;
  PanelSkala.Enabled:=false;
  PanelRotasi.Enabled:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  form1.Width:=Screen.Width;
  form2 := tform2.Create(Self);
  form2.Width:=Screen.Width;
  form2.Height:=Screen.Height-form1.Height;
  form2.Left:=0;
  form2.Top:=0;
  form2.Show;
  form2.Enabled := false;
  left := form2.Left;
  top  := form2.Height;
  eRusuk.Text := '1';
  Button13.Hide;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
   form2.Free;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  ok:=False;
  form2.Refresh;
  eRusuk.Text := '1';
  PanelTranslasi.Enabled:=false;
  PanelSkala.Enabled:=false;
  PanelRotasi.Enabled:=false;
  Button2.Enabled := true;
end;

procedure TForm1.Button3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=1;
end;

procedure TForm1.Button3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=0;
end;

procedure TForm1.Button4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=2;
end;

procedure TForm1.Button5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=5;
end;

procedure TForm1.Button6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=6;
end;

procedure TForm1.Button7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=3;
end;

procedure TForm1.Button8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=4;
end;

procedure TForm1.Button9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=7;
end;

procedure TForm1.Button10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=8;
end;

procedure TForm1.BitBtn1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=9;
end;

procedure TForm1.BitBtn3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=10;
end;

procedure TForm1.BitBtn2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=12;
end;

procedure TForm1.BitBtn4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
perintah:=11;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Form4.Show;
  Button13.Show;
  panelTranslasi.Enabled := false;
  panelRotasi.Enabled := false;
  panelSkala.Enabled := false;
  eRusuk.Enabled := false;
  Button1.Enabled := false;
  Button2.Enabled := false;
  Button11.Enabled := false;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Form4.Close;
  Button13.Hide;
  panelTranslasi.Enabled := true;
  panelRotasi.Enabled := true;
  panelSkala.Enabled := true;
  eRusuk.Enabled := true;
  Button1.Enabled := true;
  Button11.Enabled := true;
end;

end.
