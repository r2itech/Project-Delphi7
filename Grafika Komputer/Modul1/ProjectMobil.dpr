program ProjectMobil;

uses
  Forms,
  Mobil in 'Mobil.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
