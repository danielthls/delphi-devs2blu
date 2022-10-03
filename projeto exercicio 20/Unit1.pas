unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCarros = Record
    Modelo: string;
    Ano: string;
    ValorInicial: string;
    ValorTotal: string;
  End;
  TCarrosArray = array of TCarros;
  TForm1 = class(TForm)
    Label1: TLabel;
    edtModelo: TEdit;
    Label2: TLabel;
    edtValor: TEdit;
    Label3: TLabel;
    edtAno: TEdit;
    mmListaCarros: TMemo;
    Button1: TButton;
    Label4: TLabel;
    lblTotalCarros: TLabel;
    Label5: TLabel;
    lblAno2000: TLabel;
    btnListar: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
  private
    fCarros: TCarrosArray;
    xContaCarros: integer;
    xContaCarrosAno2000: integer;
    procedure incluiCarro;
    procedure listaCarro;
    { Private declarations }
  public
    { Public declarations }
  end;

{A concession�ria de ve�culos �CARANGO VELHO� est� vendendo os seus ve�culos com
desconto. Fa�a um algoritmo que calcule e exiba o valor do desconto e o valor a
ser pago pelo cliente de v�rios carros. O desconto dever� ser calculado de
acordo com o ano do ve�culo. At� 2000 - 12% e acima de 2000 - 7%. O sistema
dever� perguntar se deseja continuar calculando desconto at� que a resposta
seja: �(N) N�o�. Informar total de carros com ano at� 2000 e total geral;}

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnListarClick(Sender: TObject);
begin
  listaCarro;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  incluiCarro;
end;

procedure TForm1.incluiCarro;
var
  xCarro: TCarros;
  xDesconto: integer;
  xValorTotal, xValorBruto: double;

begin
  xCarro.Modelo := edtModelo.text;
  xCarro.Ano := edtAno.text;
  xValorBruto := strToFloat(edtValor.text);


  if strToInt(xCarro.ano) > 2000 then
    xDesconto:= 7
  else
  begin
    xContaCarrosAno2000 := xContaCarrosAno2000 + 1;
    xDesconto:= 12;
  end;

  xCarro.ValorInicial := formatFloat('R$ 0.00',xValorBruto);
  xValorTotal := xValorBruto - ((xValorBruto * xDesconto)/100);
  xCarro.ValorTotal := formatFloat('R$ 0.00',xValorTotal);

  setLength(fCarros, length(fCarros)+1);
  fCarros[length(fCarros)-1] := xCarro;

  xContaCarros := xContaCarros +1;

  case MessageDLG('Deseja adicionar mais um carro?',mtCustom,
  [mbYes,mbNo],0) of
  mrYes     :
  begin
    edtModelo.text := '';
    edtAno.text := '';
    edtValor.text :='';
    mmListaCarros.Clear;
    lblTotalCarros.Caption := '0';
    lblAno2000.Caption := '0';
  end;
  mrNo      :
    listaCarro;
  end;


end;

procedure TForm1.listaCarro;
var
  I: integer;
begin
  if Length(fCarros) = 0 then
  begin
    showmessage('Erro: N�o existem ve�culos cadastrados');
    exit;
  end;

  for I := 0 to Length(fCarros)-1 do
  begin
    mmListaCarros.Lines.Add('Modelo: ' + fCarros[i].Modelo + '; Ano: ' +
    fCarros[i].Ano + '; Valor Inicial: ' + fCarros[i].ValorInicial +
    '; Valor com desconto: ' + fCarros[i].ValorTotal);
  end;

  lblTotalCarros.caption := intToStr(xContaCarros);
  lblAno2000.caption := intToStr(xContaCarrosAno2000);

end;

end.
