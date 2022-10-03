unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    Label3: TLabel;
    lblSoma: TLabel;
    lblSubtracao: TLabel;
    lblMultiplicacao: TLabel;
    lblDivisao: TLabel;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure calcular;
    function somar(pParcela1:double;pParcela2:double) :double;{ Private declarations }
    function subtrair(pMinuendo:double; pSubtraendo:double) :double;
    function multiplicar(pFator1:double; pFator2:double): double;
    function dividir(pDividendo: double; pDivisor: double): Double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  self.calcular;
end;

procedure TForm1.calcular;
var
  xValor1, xValor2: double;
  xResultadoSoma, xResultadoSubtracao: double;
  xResultadoMultiplicacao, xResultadoDivisao: double;
begin
  xValor1 := StrToInt(edtValor1.text);
  xValor2 := StrToInt(edtValor2.text);

  xResultadoSoma := somar(xValor1, xValor2);
  xResultadoSubtracao := subtrair(xValor1, xValor2);
  xResultadoMultiplicacao := multiplicar(xValor1, xValor2);
  xResultadoDivisao := dividir(xValor1, xValor2);

  lblSoma.Caption := 'Soma: ' + FloatToStr(xResultadoSoma);
  lblSubtracao.Caption := 'Subtração: ' + FloatToStr(xResultadoSubtracao);
  lblMultiplicacao.Caption := 'Multiplicação: ' + FloatToStr(xResultadoMultiplicacao);
  lblDivisao.Caption := 'Divisão: ' + FloatToStr(xResultadoDivisao);
end;

function TForm1.dividir(pDividendo, pDivisor: double): double;
begin
  Result := (pDividendo / pDivisor);
end;

function TForm1.multiplicar(pFator1, pFator2: double): double;
begin
  Result := pFator1 * pFator2;
end;

function TForm1.somar(pParcela1, pParcela2: double): double;
begin
  Result := pParcela1 + pParcela2;
end;

function TForm1.subtrair(pMinuendo, pSubtraendo: double): double;
begin
  Result := pMinuendo - pSubtraendo;
end;

end.
