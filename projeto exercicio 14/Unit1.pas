unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtValor1: TEdit;
    Label2: TLabel;
    edtValor2: TEdit;
    btnComparar: TButton;
    procedure btnCompararClick(Sender: TObject);
  private
    { Private declarations }
    procedure comparaNumeros;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCompararClick(Sender: TObject);
begin
  comparaNumeros;
end;

procedure TForm1.comparaNumeros;
var
  xNumero1, xNumero2: double;
begin
  xNumero1 := strToFloat(edtValor1.text);
  xNumero2 := strToFloat(edtValor2.text);

  if xNumero1 > xNumero2 then
    showMessage(floatToStr(xNumero1) + ' é maior que ' + floatToStr(xNumero2))
  else if xNumero2 > xNumero1 then
    showMessage(floatToStr(xNumero2) + ' é maior que ' + floatToStr(xNumero1))
  else
    showMessage('Os dois valores são iguais');
end;

end.
