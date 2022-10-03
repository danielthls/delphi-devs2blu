unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TJoa = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtNota1: TEdit;
    Label3: TLabel;
    edtNota2: TEdit;
    Label4: TLabel;
    edtNota3: TEdit;
    btnMedia: TButton;
    mmResultado: TMemo;
    procedure btnMediaClick(Sender: TObject);
  private
    { Private declarations }
    function calculaMedia: double;
    function checaAprocacao(pMedia: double): string;
    procedure adicionarAluno;
  public
    { Public declarations }
  end;

var
  Joa: TJoa;

implementation

{$R *.dfm}

procedure TJoa.adicionarAluno;
var
  xNome,xResultado: string;
  xMedia: double;
begin
  xNome := edtNome.text;
  xMedia := calculaMedia;
  xResultado := checaAprocacao(xMedia);

  mmResultado.Lines.Add('Aluno: ' + xNome + '; Média: ' + formatFloat('0.00',xMedia) +
  '; Situação: ' + xResultado);
end;

procedure TJoa.btnMediaClick(Sender: TObject);
begin
  adicionarAluno;
end;

function TJoa.calculaMedia: double;
var
  xNota1, xNota2, xNota3: double;
begin
  xNota1 := strToFloat(edtNota1.text);
  xNota2 := strToFloat(edtNota2.text);
  xNota3 := strToFloat(edtNota3.text);

  result := (xNota1 + xNota2 + xNota3) / 3;
end;

function TJoa.checaAprocacao(pMedia: double): string;

begin
  if pMedia >= 7 then
    result:= 'Aprovado'
  else if pMedia <= 5 then
    result:= 'Reprovado'
  else
    result:= 'Recuperação';

end;

end.
