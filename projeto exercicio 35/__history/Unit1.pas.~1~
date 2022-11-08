unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TConsumidor = (opResidencia, opComercio, opIndustria);
  TForm1 = class(TForm)
    Label1: TLabel;
    edtConsumo: TEdit;
    RGTipo: TRadioGroup;
    Label2: TLabel;
    lblTotal: TLabel;
    btnConta: TButton;
    procedure btnContaClick(Sender: TObject);
  private
    { Private declarations }
    function calculaConta(pConsumo: double; pTipo: double): double;
    procedure valorConta;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnContaClick(Sender: TObject);
begin
  valorConta;
end;

function TForm1.calculaConta(pConsumo, pTipo: double): double;
begin
  Result := pConsumo * pTipo;
end;

procedure TForm1.valorConta;
var
  xConsumo: double;
  xTipo: double;
  xValor: double;
begin
  xConsumo := strToFloat(edtConsumo.text);

  case TConsumidor(RGTipo.ItemIndex) of
  opResidencia:
  begin
    xTipo := 0.60;
  end;
  opComercio:
  begin
    xTipo := 0.48;
  end;
  opIndustria:
  begin
    xTipo := 1.29;
  end;

  else
    showMessage('Selecione o tipo de consumidor');
    exit;
  end;

  xValor := calculaConta(xConsumo,xTipo);

  lblTotal.caption := formatFloat('R$ 0.00',xValor);
end;

end.
