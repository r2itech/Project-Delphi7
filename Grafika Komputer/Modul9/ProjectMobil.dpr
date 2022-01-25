program ProjectMobil;

uses
  Forms,
  UnitMobil in 'UnitMobil.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
