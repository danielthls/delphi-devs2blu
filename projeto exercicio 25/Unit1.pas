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
    btnComparar: TButton;
    procedure btnCompararClick(Sender: TObject);
  private
    { Private declarations }
    procedure comparaNumero;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCompararClick(Sender: TObject);
begin
  comparaNumero;
end;

procedure TForm1.comparaNumero;
var
  xValor1, xValor2: double;
begin
  xValor1 := strToFloat(edtValor1.text);
  xValor2 := strToFloat(edtValor2.Text);

  if xValor1 > xValor2 then
    showMessage(floatToStr(xValor1) + ' é maior que ' + floatToStr(xValor2))
  else if xValor2 > xValor1 then
    showMessage(floatToStr(xValor2) + ' é maior que ' + floatToStr(xValor1))
  else
    showMessage('Os valores são iguais');
end;

end.
