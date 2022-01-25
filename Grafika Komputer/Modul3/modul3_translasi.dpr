program modul3_translasi;

uses
  Forms,
  Unit_translasi in 'Unit_translasi.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
