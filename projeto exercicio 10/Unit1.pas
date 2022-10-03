unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtValorTotal: TEdit;
    btnCalcular: TButton;
    Label2: TLabel;
    edtParcela: TEdit;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure calculaValorParcela;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  calculaValorParcela;
end;

procedure TForm1.calculaValorParcela;
var
  xValorTotal, xValorParcela: double;
const
  numeroDeParcelas: double = 5;
begin
  xValorTotal := strToFloat(edtValorTotal.text);
  xValorParcela := xValorTotal / numeroDeParcelas;

  edtParcela.text := 'R$ ' + formatFloat('0.00',xValorParcela);
end;

end.
