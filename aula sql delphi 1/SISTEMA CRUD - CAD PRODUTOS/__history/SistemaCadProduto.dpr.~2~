program SistemaCadProduto;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  UdmPedidos in 'UdmPedidos.pas' {dmPedidos: TDataModule},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompradores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
