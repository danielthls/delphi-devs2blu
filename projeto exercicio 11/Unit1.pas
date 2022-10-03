unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtCusto: TEdit;
    edtAcrescimo: TEdit;
    Label2: TLabel;
    edtVenda: TEdit;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure calculaVenda;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  calculaVenda;
end;

procedure TForm1.calculaVenda;
var
  xCusto: double;
  xAcrescimo: double;
  xTotal: double;
begin
  xCusto := strToFloat(edtCusto.text);
  xAcrescimo := strToFloat(edtAcrescimo.text);
  xTotal := xCusto + ((xCusto*xAcrescimo)/100);

  edtVenda.text := 'R$ ' + formatFloat('0.00',xTotal);
end;

end.
