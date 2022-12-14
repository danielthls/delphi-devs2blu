unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TNome = array of string;
  TCusto = array of double;
  TVenda = array of double;
  TBalanco = array of string;

  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNome: TEdit;
    edtCusto: TEdit;
    edtVenda: TEdit;
    mmResultado: TMemo;
    btnCalcular: TButton;
    Label4: TLabel;
    lblCusto: TLabel;
    Label6: TLabel;
    lblVenda: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    xContaProdutos : integer;

    fNome: TNome;
    fCusto: TCusto;
    fVenda: TVenda;
    fBalanco: TBalanco;

    procedure calculaPreju;
    function mediaCusto: double;
    function mediaVenda: double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  calculaPreju;
end;

procedure TForm1.calculaPreju;
var
  xMediaCusto: double;
  xMediaVenda: double;
  I: integer;
const
  qtdProdutos = 4;
begin
  for I := 1 to qtdProdutos do
  begin
    setLength(fNome, Length(fNome)+1);
    setLength(fCusto, Length(fCusto)+1);
    setLength(fVenda, Length(fVenda)+1);
    setLength(fBalanco, Length(fBalanco)+1);

    fNome[Length(fNome)-1] := inputbox('Informar','Informe o nome do produto','');
    fCusto[Length(fCusto)-1] := strToFloat(inputbox('Informar','Informe o pre?o de custo do produto',''));
    fVenda[Length(fVenda)-1] := strToFloat(inputbox('Informar','Informe o pre?o de venda do produto',''));

    if fcusto[length(fCusto)-1] > fVenda[Length(fVenda)-1] then
      fBalanco[Length(fBalanco)-1] := 'Peju?zo'
    else if fcusto[length(fCusto)-1] < fVenda[Length(fVenda)-1] then
      fBalanco[Length(fBalanco)-1] := 'Lucro'
    else
      fBalanco[Length(fBalanco)-1] := 'Empate';

    mmResultado.Lines.Add('Nome: ' + fNome[Length(fNome)-1] + '; Custo:' +
    formatFloat('R$ 0.00', fCusto[Length(fCusto)-1]) + '; Venda: ' +
    formatFloat('R$ 0.00', fVenda[Length(fVenda)-1]) + '; Balan?o: ' +
    fBalanco[Length(fBalanco)-1]);
  end;

  xMediaCusto := mediaCusto;
  xMediaVenda := mediaVenda;

  lblCusto.Caption := formatFloat('R$ 0.00', xMediaCusto);
  lblVenda.Caption := formatFloat('R$ 0.00', xMediaVenda);


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xContaProdutos := 0;
end;

function TForm1.mediaCusto: double;
var
  i: integer;
  xSoma: double;
begin
  xSoma := 0;
  for I := 0 to length(fCusto)-1 do
    xSoma := xSoma + fCusto[i];

  Result := xSoma / length(fCusto);

end;

function TForm1.mediaVenda: double;
var
  i: integer;
  xSoma: double;
begin
  xSoma := 0;
  for I := 0 to length(fVenda)-1 do
    xSoma := xSoma + fVenda[i];

  Result := xSoma / length(fVenda);

end;

end.
