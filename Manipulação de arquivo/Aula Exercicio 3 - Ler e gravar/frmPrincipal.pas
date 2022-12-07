unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtPrimeiraNota: TEdit;
    Label3: TLabel;
    edtSegundaNota: TEdit;
    btnGravar: TButton;
    btnLer: TButton;
    mmDiario: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
  private
    { Private declarations }
    FArq: TextFile;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  if (edtNome.Text <> '') and
     (edtPrimeiraNota.Text <> '') and
     (edtSegundaNota.Text <> '') then
  begin
    //Grava uma linha com os dados de um aluno no arquivo
    Writeln(FArq, edtNome.Text,         '|',
                  edtPrimeiraNota.Text, '|',
                  edtSegundaNota.Text,  '|');
    edtNome.Clear;
    edtPrimeiraNota.Clear;
    edtSegundaNota.Clear;
  end;
end;

procedure TForm1.btnLerClick(Sender: TObject);
var
  xLinha,xNome: String;
  xReg, i: Integer;
  xNota1, xNota2, xMedia: Double;
begin
  mmDiario.Clear;

  //Abre o arquivo texto para leitura
  Reset(FArq);

  try
    xReg := 0;
    //Enquanto não atingir a marca de final de arquivo
    while (not Eof(FArq)) do
    begin
      // Lê uma linha, com os dados de uma aluno, do arquivo
      Readln(FArq, xLinha);

      xReg := xReg + 1;

      // Recupera o nome do aluno
      i := pos('|', xLinha);
      xNome := copy(xLinha, 1, i-1);
      delete(xLinha,1, i);

      // Recupera 1ª nota do aluno
      i := pos('|', xLinha);
      xNota1 := StrToFloatDef(copy(xLinha, 1, i-1),0);
      delete(xLinha, 1, i);

      // Recupera 2ª nota do aluno
      i := pos('|', xLinha);
      xNota2 := StrToFloatDef(copy(xLinha, 1, i-1),0);

      // Processando e exibindo os dados recuperados
      xMedia := (xNota1 + xNota2) / 2;
      mmDiario.Lines.Add('Registro Nro....: ' + intToStr(xReg));
      mmDiario.Lines.Add('Nome do Aluno: ' + xNome);
      mmDiario.Lines.Add('1a nota..........: ' + floatToStr(xNota1));
      mmDiario.Lines.Add('2a nota..........: ' + floatToStr(xNota2));
      mmDiario.Lines.Add('Média............: ' + floatToStr(xMedia));

      if (xMedia >= 7) then
        mmDiario.Lines.Add('Situação.........: Aprovado')
      else
        mmDiario.Lines.Add('Situação.........: Reprovado');
      mmDiario.Lines.Add('');
    end;

  finally

  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(FArq);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  AssignFile(FArq,'diario.txt');
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

end.
