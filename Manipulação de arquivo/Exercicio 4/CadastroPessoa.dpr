program CadastroPessoa;

uses
  Vcl.Forms,
  UPessoa in 'UPessoa.pas' {frmPessoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPessoa, frmPessoa);
  Application.Run;
end.
