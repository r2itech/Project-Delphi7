program menampilkancitra;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  menampilkancitra2 in 'menampilkancitra2.pas' {Form2},
  prak3 in 'prak3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
