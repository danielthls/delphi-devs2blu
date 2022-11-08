program Project1;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UdmPedidos in 'UdmPedidos.pas' {dmPedidos: TDataModule},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompradores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
