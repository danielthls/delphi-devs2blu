unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure queNumero;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  queNumero;
end;

procedure TForm1.queNumero;
var
  xNumero: double;
begin
  xNumero := strToFloat(inputbox('Informar','Informe o número','0'));

  if xNumero > 60 then
    showMessage('O número é maior que 60')
  else if xNumero < 25 then
    ShowMessage('O número é menor que 25')
  else if xNumero = 40 then
    showMessage('O número é igual a 40')
  else
    showMEssage('O número é menor que 60, maior que 25 e diferente de 40');

end;

end.
