program ProjectKubus3D;

uses
  Forms,
  UnitKubus3D in 'UnitKubus3D.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
