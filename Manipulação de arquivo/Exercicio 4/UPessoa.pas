unit UPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPessoa = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtNasc: TEdit;
    mmLista: TMemo;
    btnGravar: TButton;
    btnLer: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FArq: TextFile;
    procedure Gravar;
    procedure Ler;

  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

{$R *.dfm}

procedure TfrmPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(FArq);
end;

procedure TfrmPessoa.FormShow(Sender: TObject);
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

procedure TfrmPessoa.Gravar;
var
  xLinha: string;
  i, xCod: Integer;
  xDataNasc: TDate;
begin
  xDataNasc
  xCod := 0;
  while (not eof(FArq)) do
  begin
    Readln(FArq, xLinha);
    i := pos('|', xLinha);
    xCod := strToInt(copy(xLinha, 1, i-1)) + 1;
  end;

  if (edtNome.Text <> '') and
     (edtNasc.Text <> '') then
  begin
    //Grava uma linha com os dados de um aluno no arquivo
    Writeln(FArq, intToStr(xCod),                '|',
                  edtNome.Text,                  '|',
                  Str(dtpNascimento.Date), '|');
    edtNome.Clear;
    dtpNascimento.date := now;
  end;

end;

procedure TfrmPessoa.Ler;
begin

end;

end.
