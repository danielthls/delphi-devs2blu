unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtVendas: TEdit;
    Label3: TLabel;
    edtSalario: TEdit;
    btnCalcular: TButton;
    Label4: TLabel;
    lblNome: TLabel;
    lblSalarioFixo: TLabel;
    lblSalarioTotal: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    function calculaSalarioTotal : double;
    procedure mostraResultado;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
//chama Procedure que mostra resultado
procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  mostraResultado;
end;

//calcula a comiss�o do vendedor e soma com o sal�rio base
function TForm1.calculaSalarioTotal: double;
var
xVendas, xSalarioBase: double;
const
cComissao = 15;

begin
  xSalarioBase := StrToFloat(edtSalario.text);
  xVendas := StrToFloat(edtVendas.text);

  Result := xSalarioBase + ((xVendas*cComissao)/100);
end;

//chama function caculaSalarioTotal atribui resultado � vari�vel
//mostra todos os resultados;
procedure TForm1.mostraResultado;
var
  xSalarioTotal: double;
begin
  xSalarioTotal := calculaSalarioTotal;

  lblNome.caption := 'Nome: ' + edtNome.text;
  lblSalarioFixo.Caption := 'Sal�rio fixo: R$ ' + edtSalario.text;
  lblSalarioTotal.Caption := 'Sal�rio total: R$ ' + floatToStr(xSalarioTotal);



end;

end.
