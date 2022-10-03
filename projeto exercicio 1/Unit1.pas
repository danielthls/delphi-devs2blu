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
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure calcular;
    function somar(pParcela1:double;pParcela2:double) :double;{ Private declarations }

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

  lblSoma.Caption := 'Soma: ' + FloatToStr(xResultadoSoma);
  
end;


function TForm1.somar(pParcela1, pParcela2: double): double;
begin
  Result := pParcela1 + pParcela2;
end;



end.
