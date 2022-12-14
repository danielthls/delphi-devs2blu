unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UElevador;

type
  TfrmElevador = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblCapacidade: TLabel;
    lblAndares: TLabel;
    lblNumeroPessoas: TLabel;
    lblAndarAtual: TLabel;
    btnSobe: TButton;
    btnDesce: TButton;
    btnEntra: TButton;
    btnSai: TButton;
    procedure Desce;
    procedure Sobe;
    procedure Entra;
    procedure Sai;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSobeClick(Sender: TObject);
    procedure btnDesceClick(Sender: TObject);
    procedure btnEntraClick(Sender: TObject);
    procedure btnSaiClick(Sender: TObject);
  private
    xElevador: TElevador;
    procedure AtualizaDados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmElevador: TfrmElevador;

implementation

{$R *.dfm}

procedure TfrmElevador.AtualizaDados;
begin
  lblCapacidade.Caption := IntToStr(xElevador.CapacidadePessoas) + ' pessoas';
  lblAndares.Caption := IntToStr(xElevador.TotalAndares) + ' andares';
  lblNumeroPessoas.Caption := IntToStr(xElevador.NPessoas) + ' pessoas';
  if xElevador.NAndar = 0 then
    lblAndarAtual.Caption := 'T?rreo'
  else
   lblAndarAtual.Caption := IntToStr(xElevador.NAndar) + '? andar';

end;

procedure TfrmElevador.btnDesceClick(Sender: TObject);
begin
  Desce;
end;

procedure TfrmElevador.btnEntraClick(Sender: TObject);
begin
  Entra;
end;

procedure TfrmElevador.btnSaiClick(Sender: TObject);
begin
  Sai;
end;

procedure TfrmElevador.btnSobeClick(Sender: TObject);
begin
  Sobe;
end;

procedure TfrmElevador.Desce;
var
  xAndar: Integer;
begin
  TryStrToInt(InputBox('Descer', 'Insira o andar', '1'),xAndar);
  xElevador.Desce(xAndar);
  showMessage('Andar atual: ' + IntToStr(xAndar));
  atualizaDados;
end;

procedure TfrmElevador.Entra;
var
  xPessoas: Integer;
begin
  TryStrToInt(InputBox('Entrar', 'Insira o n?mero de pessoas entrando', '1'),xPessoas);
  xElevador.Entra(xPessoas);
  showMessage('N?mero de pessoas no elevador: ' + IntToStr(xElevador.NPessoas));
  AtualizaDados;
end;

procedure TfrmElevador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  freeandnil(xElevador);
end;

procedure TfrmElevador.FormCreate(Sender: TObject);
const xTotalAndares = 12;
const xCapacidade = 14;
begin
  xElevador := TElevador.Create(xTotalAndares,xCapacidade);
  AtualizaDados;
end;

procedure TfrmElevador.Sai;
var
  xPessoas: Integer;
begin
  TryStrToInt(InputBox('Sair', 'Insira o n?mero de pessoas saindo', '1'),xPessoas);
  xElevador.Sai(xPessoas);
  showMessage('N?mero de pessoas no elevador: ' + IntToStr(xElevador.NPessoas));
  AtualizaDados;
end;

procedure TfrmElevador.Sobe;
var
  xAndar: Integer;
begin
  TryStrToInt(InputBox('Subir', 'Insira o andar', '1'),xAndar);
  xElevador.Sobe(xAndar);
  showMessage('Andar atual: ' + IntToStr(xAndar));
  atualizaDados;
end;

end.
