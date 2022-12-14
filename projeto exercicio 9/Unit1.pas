unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtValorDepositado: TEdit;
    Label2: TLabel;
    edtRendimento: TEdit;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure calculaRendimento;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{9. Fa?a um algoritmo que receba um valor que foi depositado e exiba o valor
com rendimento ap?s um m?s. Considere fixo o juros da poupan?a em 0,07% a.m;}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  calculaRendimento;
end;

procedure TForm1.calculaRendimento;
var
  xValorDepositado: double;
  xValorCorrigido: double;
const
  xRendimento = 0.07;
begin
  xValorDepositado := strToFloat(edtValorDepositado.text);
  xValorCorrigido := xValorDepositado + ((xValorDepositado * xRendimento)/100);
  edtRendimento.text := 'R$ ' + formatFloat('0.00',xValorCorrigido);
end;

end.
