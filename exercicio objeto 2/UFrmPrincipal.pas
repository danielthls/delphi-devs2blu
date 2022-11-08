unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UContaCorrente;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    lblNome: TLabel;
    Label2: TLabel;
    lblNumeroConta: TLabel;
    Label3: TLabel;
    lblSaldo: TLabel;
    btnAlteraNome: TButton;
    btnDeposito: TButton;
    btnSaque: TButton;
    btnNovaConta: TButton;
    mmHistorico: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnNovaContaClick(Sender: TObject);
    procedure btnDepositoClick(Sender: TObject);
    procedure btnSaqueClick(Sender: TObject);
    procedure btnAlteraNomeClick(Sender: TObject);
  private
    { Private declarations }
    FContaCorrente : TContaCorrente;
    procedure AlteraNome;
    procedure Deposito;
    procedure Saque;
    procedure NovaConta;
    procedure AtualizaDados(pOperacao: string; pSaldoAnterior, pMudanca: double);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AlteraNome;
begin
  FContaCorrente.Nome := InputBox('Alterar Nome','Insira o nome do titular da conta','Nome');

  atualizaDados('Alteração de Nome', FContaCorrente.saldo, 0);
end;

procedure TForm1.AtualizaDados(pOperacao: String; pSaldoAnterior, pMudanca: double);
begin
  lblNome.Caption := FContaCorrente.Nome;
  lblNumeroConta.Caption := intToStr(FContaCorrente.NumeroConta);
  lblSaldo.Caption := formatFloat('R$ 0.00',FContaCorrente.Saldo);

  lblNome.Visible := true;
  lblNumeroConta.Visible := true;
  lblSaldo.Visible := true;

  mmHistorico.Lines.Add('Nome: ' + FContaCorrente.Nome + '; Operação: ' + pOperacao +
                      '; Saldo Anterior: ' + formatFloat('R$ 0.00',pSaldoAnterior) +
                      '; ' + pOperacao + ': ' + formatFloat('R$ 0.00',pMudanca) +
                      '; Saldo atual: ' + formatFloat('R$ 0.00',FContaCorrente.Saldo));
end;

procedure TForm1.btnAlteraNomeClick(Sender: TObject);
begin
  alteraNome;
end;

procedure TForm1.btnDepositoClick(Sender: TObject);
begin
  deposito;
end;

procedure TForm1.btnNovaContaClick(Sender: TObject);
begin
  NovaConta;
end;

procedure TForm1.btnSaqueClick(Sender: TObject);
begin
  saque;
end;

procedure TForm1.Deposito;
var
  xSaldoVelho, xEntrada: double;
begin
    xSaldoVelho := FContaCorrente.Saldo;
    xEntrada := strToFloat(InputBox('Depósito','Insira o valor a ser depositado','0'));
    FContaCorrente.Saldo := fContaCorrente.deposito(xEntrada);

    AtualizaDados('Depósito',xSaldoVelho,xEntrada);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FContaCorrente);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  xNome: string;
  xNumero: integer;
  xSaldo: double;
begin
  xNome := InputBox('Nome','Insira o nome do titular da conta','Nome');
  xNumero := strToInt(InputBox('Número da conta','Insira o número da conta','1'));
  xSaldo := strToFloatDef(InputBox('Número da conta','Insira o número da conta','1'),0);
  FContaCorrente :=  TContaCorrente.Create(xNumero, xNome, xSaldo);

  AtualizaDados('Nova Conta',0,0);
end;

procedure TForm1.NovaConta;
begin
  FContaCorrente.Nome := InputBox('Nome','Insira o nome do titular da conta','Nome');
  FContaCorrente.NumeroConta := strToInt(InputBox('Número da conta','Insira o número da conta','1'));
  FContaCorrente.Saldo := strToFloat(InputBox('Saldo','Insira o saldo atual','0'));

  AtualizaDados('Nova Conta',0,0);
end;

procedure TForm1.Saque;
var
  xSaldoVelho, xSaida: double;
begin
    xSaldoVelho := FContaCorrente.Saldo;
    xSaida := strToFloat(InputBox('Depósito','Insira o valor a ser depositado','0'));
    FContaCorrente.Saldo := fContaCorrente.saque(xSaida);

    AtualizaDados('Saque',xSaldoVelho,xSaida);
end;
end.
