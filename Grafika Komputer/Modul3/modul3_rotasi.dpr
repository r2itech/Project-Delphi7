program modul3_rotasi;

uses
  Forms,
  unit_rotasi in 'unit_rotasi.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
