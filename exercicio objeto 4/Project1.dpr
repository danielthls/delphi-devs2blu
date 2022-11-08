program Project1;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {frmPrincipal},
  UCombustivel in 'UCombustivel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
