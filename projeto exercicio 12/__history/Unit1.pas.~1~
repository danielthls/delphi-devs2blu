unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtFabrica: TEdit;
    Label2: TLabel;
    edtImposto: TEdit;
    Label3: TLabel;
    edtDistribuidor: TEdit;
    Label4: TLabel;
    edtFinal: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure precoFinal;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{O custo de um carro novo ao consumidor é a soma do custo de fábrica mais o
percentual do distribuidor e dos impostos aplicados (primeiro os impostos são
aplicados sobre o custo de fábrica, e depois o percentual do distribuidor
sobre o resultado). Supondo que o percentual do distribuidor seja de 28% e os
impostos 45%, escreva um algoritmo que leia o custo de fábrica de um carro
e informe o custo ao consumidor do mesmo;}

procedure TForm1.Button1Click(Sender: TObject);
begin
  precoFinal;
end;

procedure TForm1.precoFinal;
var
  xPrecoFabrica: double;
  xImposto: double;
  xPrecoImposto: double;
  xDistribuidor: double;
  xPrecoFinal: double;
begin
  xPrecoFabrica := strToFloat(edtFabrica.text);
  xImposto := strToFloat(edtImposto.text);
  xDistribuidor := strToFloat(edtDistribuidor.text);

  xPrecoImposto := xPrecoFabrica + ((xPrecoFabrica * xImposto)/100);
  xPrecoFinal := xPrecoImposto + ((xPrecoImposto * xDistribuidor)/100);

  edtFinal.text := 'R$ ' + formatFloat('0.00',xPrecoFinal);
end;

end.
