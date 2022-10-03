unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtQtd: TEdit;
    mmResultado: TMemo;
    btnCalcular: TButton;
    Label2: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure listaNumero;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  listaNumero;
end;

procedure TForm1.listaNumero;
var
  I, xQtdNumero: integer;
  xNumero: double;
  xPalavra: string;
begin
  xQtdNumero := strToInt(edtQtd.Text);

  for I := 1 to xQtdNumero do
  begin
    xNumero := strToFloat(inputbox('Informar','Informe o número',''));

    if xNumero > 0 then
      xPalavra := 'Positivo'
    else if xNumero < 0 then
      xPalavra := 'Negativo'
    else
      xPalavra := 'ZERO';

    mmResultado.Lines.Add(floatToStr(xNumero) + ' é ' + xPalavra);


  end;

end;

end.
