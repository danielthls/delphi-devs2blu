program Pessoa;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {frmPessoa},
  UPessoa in 'UPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPessoa, frmPessoa);
  Application.Run;
end.
