unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNumero: TEdit;
    btnMaior: TButton;
    procedure btnMaiorClick(Sender: TObject);
  private
    { Private declarations }
    procedure maiorQue10;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnMaiorClick(Sender: TObject);
begin
  maiorQue10;
end;

procedure TForm1.maiorQue10;
var
  xNumero: double;
begin
  xNumero := strToFloat(edtNumero.text);
  if xNumero > 10 then
    showMessage(floatToStr(xNumero) + ' é maior que 10')
  else
    showMessage(floatToStr(xNumero) + ' não é maior que 10');
end;

end.
