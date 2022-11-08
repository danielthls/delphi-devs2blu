program TimeJogador;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {Form1},
  UTime in 'UTime.pas',
  UJogador in 'UJogador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
