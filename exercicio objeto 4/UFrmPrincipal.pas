unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UCombustivel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblTipo: TLabel;
    lblValor: TLabel;
    lblQtd: TLabel;
    btnValor: TButton;
    btnLitro: TButton;
    mmHistorico: TMemo;
    Label4: TLabel;
    btnATipo: TButton;
    btbAValor: TButton;
    btnAQTd: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLitroClick(Sender: TObject);
    procedure btnValorClick(Sender: TObject);
    procedure btnATipoClick(Sender: TObject);
    procedure btbAValorClick(Sender: TObject);
    procedure btnAQTdClick(Sender: TObject);

  private
    xCombustivel : TBombaCombustivel;
    procedure atualizaDados;
    procedure abasteceLitro;
    procedure abasteceValor;
    procedure alteraValor;
    procedure alteraTipo;
    procedure alteraQtd;
    procedure adicionaLinha(pAbastece, pTipo: string; pValor, pQtd: double);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.abasteceLitro;
var
  xLitro: double;
  xValorTotal: double;
begin
  xLitro := strToFloat(InputBox('Abastecer por Litro', 'Insira a quantidade de litros', '1'));
  xValorTotal := xCombustivel.abastecerPorLitro(xLitro);
  adicionaLinha('Litro', xCombustivel.TipoCombustivel, xValorTotal, xLitro);
end;

procedure TfrmPrincipal.abasteceValor;
var
  xLitro: double;
  xValor: double;
begin
  xValor := strToFloat(InputBox('Abastecer por Valor', 'Insira o valor a ser abastecido', '1'));
  xLitro := xCombustivel.abastecerPorValor(xValor);
  adicionaLinha('Valor', xCombustivel.TipoCombustivel, xValor, xLitro);
end;

procedure TfrmPrincipal.adicionaLinha(pAbastece, pTipo: string; pValor, pQtd: double);
begin
  mmHistorico.Lines.Add('Tipo: ' + pTipo + '; Abasteceimento por ' + pAbastece +
                        '; Valor: ' + formatFloat('R$ 0.00',pValor) +
                        '; Quantidade de Litros: ' + formatFloat('0.00',pQtd));
  atualizaDados;
end;

procedure TfrmPrincipal.alteraQtd;
var
  xQtd: double;
begin
  xQtd := strToFloat(InputBox('Alterar Quantidade', 'Insira o valor em litros', '1'));
  xCombustivel.alteraQtdCombustivel(xQtd);
  atualizaDados;
end;

procedure TfrmPrincipal.alteraTipo;
var
  xTipo: string;
begin
  xTipo := InputBox('Alterar Tipo', 'Insira o tipo', '');
  xCombustivel.alteraTipoCombustivel(xTipo);
  alteraValor;
  alteraQtd;
  adicionaLinha(xCombustivel.TipoCombustivel,'Alteração',xCombustivel.ValorLitro,xCombustivel.QtdCombustivel);
end;

procedure TfrmPrincipal.alteraValor;
var
  xValor: double;
begin
  xValor := strToFloat(InputBox('Alterar Preço', 'Insira o novo preço', '1'));
  xCombustivel.alteraValor(xValor);
  atualizaDados;
end;

procedure TfrmPrincipal.atualizaDados;
begin
  lblTipo.Caption := xCombustivel.TipoCombustivel;
  lblValor.Caption := formatFloat('R$ 0.00',xCombustivel.ValorLitro);
  lblQtd.Caption := formatFloat('0.00',xCombustivel.QtdCombustivel);

end;

procedure TfrmPrincipal.btnLitroClick(Sender: TObject);
begin
  abasteceLitro;
end;

procedure TfrmPrincipal.btnValorClick(Sender: TObject);
begin
  abasteceValor;
end;

procedure TfrmPrincipal.btbAValorClick(Sender: TObject);
begin
  alteraValor;
end;

procedure TfrmPrincipal.btnAQTdClick(Sender: TObject);
begin
  alteraQtd;
end;

procedure TfrmPrincipal.btnATipoClick(Sender: TObject);
begin
  alteraTipo;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(xCombustivel);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  xCombustivel := TBombaCombustivel.Create;
  atualizaDados;
end;

end.
