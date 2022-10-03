unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtValor: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure comparaValor;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  comparaValor;
end;

procedure TForm1.comparaValor;
var
   xValor: double;
const
  cGrandeza1 = 100;
  cGrandeza2 = 200;
begin
  xValor := strToFloat(edtValor.text);
  if (xValor > cGrandeza1) and (xValor < cGrandeza2) then
    showMessage(floatToStr(xValor) + ' está entre 100 e 200.')
  else
    showMessage(floatToStr(xValor) + ' não está entre 100 e 200.')
end;

end.
