unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtDolar: TEdit;
    Label2: TLabel;
    edtReal: TEdit;
    Label3: TLabel;
    edtCotacao: TEdit;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    //procedure casasDecimaisFormatacao;
    //procedure limpaLetras;
    procedure cotacao;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{
8. Elabore um algoritmo que efetue a apresenta��o do valor da convers�o em real
(R$) de um valor lido em d�lar (US$). O algoritmo dever� solicitar o valor da
cota��o do d�lar e tamb�m a quantidade de d�lares dispon�veis com o usu�rio;
}
procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  cotacao;
  //casasDecimaisFormatacao;
end;

{procedure TForm1.casasDecimaisFormatacao;
var
  xDolar: string;
  xReal: string;
  xCotacao: string;
begin
  xDolar := 'US$ ' + formatFloat('0.00',strToFloat(edtDolar.text));
  xReal := 'R$ ' + formatFloat('0.00',strToFloat(edtReal.text));
  xCotacao := 'R$ ' + formatFloat('0.00',strToFloat(edtCotacao.text));

  edtDolar.text := xDolar;
  edtReal.text := xReal;
  edtCotacao.text := xCotacao;
end;}

procedure TForm1.cotacao;
var
  xDolar, xReal, xCotacao: double;
begin
  xDolar := strToFloat(edtDolar.text);
  xCotacao := strToFloat(edtCotacao.text);
  xReal := xDolar * xCotacao;

  edtReal.text := floatToStr(xReal);

end;

{procedure TForm1.limpaLetras;
var
  xReal: string;
  xDolar: string;
  xCotacao: string;
begin
  xDolar := edtDolar.text;
  xReal :=  edtReal.text;
  xCotacao := edtCotacao.text;




end;}

end.
