program Project1;

uses
  Forms,
  modul2 in 'modul2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
