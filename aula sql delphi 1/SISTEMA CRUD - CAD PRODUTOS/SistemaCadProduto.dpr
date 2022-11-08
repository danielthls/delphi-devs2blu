program SistemaCadProduto;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  UdmPedidos in 'UdmPedidos.pas' {dmPedidos: TDataModule},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompradores},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmUnidadeMedida in 'UfrmUnidadeMedida.pas' {frmUnidadeMedida},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProdutos},
  UfrmPedidos in 'UfrmPedidos.pas' {frmPedidos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmUnidadeMedida, frmUnidadeMedida);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmPedidos, frmPedidos);
  Application.Run;
end.
