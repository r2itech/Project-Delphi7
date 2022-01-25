program ProjectLogin;

uses
  Forms,
  UnitLogin in 'UnitLogin.pas' {Form1},
  UnitLogin2 in 'UnitLogin2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
