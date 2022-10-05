{
*35.2 Faça um algoritmo que calcule o valor da conta de luz de uma pessoa.
Sabe-se que o cálculo da conta de luz segue a tabela abaixo:
  Tipo de Cliente Valor do KW/h
    a. (Residência) 0,60
    b. (Comércio) 0,48
    c. (Indústria) 1,29
	  d. (Fazenda) 2,18
}

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TConsumidor = (opResidencia, opComercio, opIndustria, opFazenda);
  TFormConsumoEnergia = class(TForm)
    Label1: TLabel;
    edtConsumo: TEdit;
    RGTipo: TRadioGroup;
    Label2: TLabel;
    lblTotal: TLabel;
    btnConta: TButton;
    lb_kwh: TLabel;
    procedure btnContaClick(Sender: TObject);
  private
    { Private declarations }
    function calculaConta(pConsumo: double; pTipo: double): double;
    procedure valorConta;
  public
    { Public declarations }
  end;

var
  FormConsumoEnergia: TFormConsumoEnergia;

implementation

{$R *.dfm}

procedure TFormConsumoEnergia.btnContaClick(Sender: TObject);
begin
  valorConta;
end;

function TFormConsumoEnergia.calculaConta(pConsumo, pTipo: double): double;
begin
  Result := pConsumo * pTipo;
end;

procedure TFormConsumoEnergia.valorConta;
var
  xConsumo, xTipo, xValor, xDesconto : Double;
  xInfoDesconto : String;

const

cResidencia = 0.80;
cComercio = 0.68;
cIndustria = 1.49;
cFazenda = 3.18;
begin
  xConsumo := strToFloat(edtConsumo.text);

  case TConsumidor(RGTipo.ItemIndex) of

  opResidencia:
  begin
    xTipo := cResidencia;
  end;

  opComercio:
  begin
    xTipo := cComercio;
  end;

  opIndustria:
  begin
    xTipo := cIndustria;
  end;

  opFazenda:
  begin
    xTipo := cFazenda;
  end

  else
    showMessage('Selecione o tipo de consumidor');
    exit;
  end;

  xValor := calculaConta(xConsumo,xTipo);

  xInfoDesconto := AnsiUpperCase(InputBox('Informe', 'Cliente possui desconto? s/n', ''));
  if xInfoDesconto.Equals('S') then
  begin
    xDesconto := StrToFloat(InputBox('Valor Desconto','Informe o valor de desconto: ', ''));
    xValor := (xValor - xDesconto);
    lblTotal.caption := formatFloat('R$ 0.00',xValor);
  end

  else if xInfoDesconto.Equals('N') then
  begin
    lblTotal.caption := formatFloat('R$ 0.00',xValor);
  end;
end;

end.
