unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    mmResultado: TMemo;
    Button1: TButton;
    Label2: TLabel;
    edtTotalNumeros: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    procedure checaNumeros;
    function checaIntervalo(pNum: double): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  checaNumeros;
end;

function TForm1.checaIntervalo(pNum: double): string;
begin
  if (pNum >= 10) and (pNum <= 150) then
    result := 'Est� entre 10 e 150'
  else
    result := 'N�o est� entre 10 e 150';
end;

procedure TForm1.checaNumeros;
var
  xQtdNumeros: integer;
  xNumero: double;
  I: Integer;
begin
  xQtdNumeros:= strToInt(edtTotalNumeros.text);
  for I := 1 to xQtdNumeros do
  begin
    xNumero := strToFloat(inputBox('Informar o n�mero', 'Informe seu n�mero',
    '0'));
    mmResultado.Lines.Add(floatToStr(xNumero) + ': ' + checaIntervalo(xNumero));
  end;
end;

end.
