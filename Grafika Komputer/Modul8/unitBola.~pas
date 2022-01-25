unit unitBola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    Sb_Cepat: TScrollBar;
    Panel1: TPanel;
    Timer1: TTimer;
    Bola: TShape;
    k1: TShape;
    k3: TShape;
    k4: TShape;
    k2: TShape;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Sb_CepatChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Kanan: Boolean;
  Bawah : Boolean;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Timer1.Enabled :=TRUE;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled :=FALSE;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Sb_CepatChange(Sender: TObject);
begin
  Timer1.Interval := 101 - Sb_Cepat.Position;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Randomize;
  Bola.Left :=Random(panel1.ClientWidth-Bola.Width);
  Bola.Top :=random(panel1.ClientHeight-bola.Height);
  k1.Left := Bola.left;
  k1.Top := Bola.Top;
  k2.Left := Bola.Left;
  k2.Top := Bola.Top+k1.Height;
  k3.Left := Bola.Left+k1.Width;
  k3.Top := Bola.Top;
  k4.Left := Bola.Left+k2.Width;
  k4.Top := Bola.Top+k3.Height;
  Kanan :=Boolean(random(2));
  Bawah :=Boolean(random(2));
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if Kanan then
  begin
    Bola.Left := Bola.Left+1;
    k1.Left := k1.Left+1;
    k2.Left := k2.Left+1;
    k3.Left := k3.Left+1;
    k4.Left := k4.Left+1;
    if Bola.Left + Bola.Width >= Panel1.ClientWidth then
    begin
      Kanan := False;
      k3.Hide;
      k4.Hide;
    end
  end
  else
  begin
    Bola.Left :=Bola.left -1;
    k1.Left := k1.Left-1;
    k2.Left := k2.Left-1;
    k3.Left := k3.Left-1;
    k4.Left := k4.Left-1;
    if Bola.Left <= 0 then
    Begin
      Kanan := True;
      k1.Hide;
      k2.Hide;
    end
  end;
  if Bawah then
  begin
    Bola.Top :=Bola.Top +1;
    k1.Top := k1.Top+1;
    k2.Top := k2.Top+1;
    k3.TOp := k3.Top+1;
    k4.Top := k4.Top+1;
    if Bola.top +Bola.Width >= Panel1.ClientHeight then
    Begin
      Bawah := False;
      k2.Hide;
      k4.Hide;
    end
  end
  else
  begin
    Bola.Top :=Bola.Top - 1;
    k1.Top := k1.Top-1;
    k2.Top := k2.Top-1;
    k3.TOp := k3.Top-1;
    k4.Top := k4.Top-1;
    if Bola.Top <= 0 then
    Begin
      Bawah :=True;
      k1.Hide;
      k3.Hide;
    end
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  k1.Show;
  k2.Show;
  k3.Show;
  k4.Show;
end;

end.
