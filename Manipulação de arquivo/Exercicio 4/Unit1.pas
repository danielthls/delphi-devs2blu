unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    dtpNascimento: TDateTimePicker;
    Label2: TLabel;
    mmListaPessoas: TMemo;
    btnGravar: TButton;
    btnLer: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
  private
    { Private declarations }
    FArq : TextFile;
    procedure Gravar;
    procedure Ler;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
begin
  Gravar;
end;

procedure TfrmPrincipal.btnLerClick(Sender: TObject);
begin
  Ler;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(FArq);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  AssignFile(FArq,'cadastro.txt');
  {$I-}
  Reset(FArq);

  if IOResult <> 0 then
    Rewrite(FArq) //Arquivo não existe e será criado
  else
  begin
    CloseFile(FArq);
    Append(FArq); //O arquivo existe e será aberto para saídas adicionais
  end;
  {$I+}
end;

procedure TfrmPrincipal.Gravar;
var
  xLinha: string;
  i, xCod: Integer;
begin
  xCod := 0;
  while (not eof(FArq)) do
  begin
    Readln(FArq, xLinha);
    i := pos('|', xLinha);
    xCod := strToInt(copy(xLinha, 1, i-1)) + 1;
  end;

  if (edtNome.Text <> '') and
     (dateToStr(dtpNascimento.Date) <> '') then
  begin
    //Grava uma linha com os dados de um aluno no arquivo
    Writeln(FArq, intToStr(xCod),                '|',
                  edtNome.Text,                  '|',
                  dateToStr(dtpNascimento.Date), '|');
    edtNome.Clear;
    dtpNascimento.date := now;
  end;


end;

procedure TfrmPrincipal.Ler;
var
  xLinha,xNome,xDataNasc, xCod: String;
  xReg, i: Integer;
begin
  mmListaPessoas.Clear;

  //Abre o arquivo texto para leitura
  Reset(FArq);

  try
    xReg := 0;
    //Enquanto não atingir a marca de final de arquivo
    while (not Eof(FArq)) do
    begin
      // Lê uma linha, com os dados de uma pessoa, do arquivo
      Readln(FArq, xLinha);

      xReg := xReg + 1;

      // Recupera o código da pessoa
      i := pos('|', xLinha);
      xCod := copy(xLinha, 1, i-1);
      delete(xLinha,1, i);

      // Recupera o nome do aluno
      i := pos('|', xLinha);
      xNome := copy(xLinha, 1, i-1);
      delete(xLinha,1, i);

      // Recupera 1ª nota do aluno
      i := pos('|', xLinha);
      xDataNasc := copy(xLinha, 1, i-1);
      delete(xLinha, 1, i);

      // Processando e exibindo os dados recuperados

      mmListaPessoas.Lines.Add('Registro Nro......: ' + intToStr(xReg));
      mmListaPessoas.Lines.Add('Código da pessoa..: ' + xCod);
      mmListaPessoas.Lines.Add('Data de Nascimento: ' + xDataNasc);

      mmListaPessoas.Lines.Add('');
    end;

  finally
    CloseFile(FArq);
  end;

end;

end.
