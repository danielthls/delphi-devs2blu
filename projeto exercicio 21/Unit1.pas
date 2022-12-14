unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TRegistroMilitar = record
    Nome: string;
    Sexo: string;
    Idade: string;
    Saude: string;
    Motivo: string;
    Apto: string;
  end;

  TSexo = (TMasculino, TFeminino);
  TSaude = (TSaudavel, TMorrendo);

  TServMilitar = array of TRegistroMilitar;

  TForm1 = class(TForm)
    Label1: TLabel;
    edtQtdPessoas: TEdit;
    Label2: TLabel;
    edtNome: TEdit;
    RGSexo: TRadioGroup;
    RGSaude: TRadioGroup;
    Label3: TLabel;
    edtIdade: TEdit;
    mmResultado: TMemo;
    btnIncluir: TButton;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    xQtdPessoas: integer;
    xContaPessoas: integer;
    fServMilitar: TServMilitar;
    procedure adicionaRecruta;
    procedure listaRecrutas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.adicionaRecruta;
var
  xMilitar: TRegistroMilitar;
  xIdade: Integer;
  xMotivo: string;
begin
  if xContaPessoas = 0 then
    edtQtdPessoas.Enabled := false;

  xQtdPessoas := strToInt(edtQtdPessoas.text);

  xMilitar.Nome := edtNome.text;
  xMilitar.Idade := edtIdade.text;
  xMilitar.Apto := 'Sim';
  xMilitar.Motivo := '';


  case TSexo(RGSexo.ItemIndex) of
    TMasculino:
      xMilitar.Sexo := 'Masculino';
    Tfeminino:
    begin
      xMilitar.Sexo := 'Feminino';
      xMilitar.Apto := 'N?o';
      xMotivo := 'mulher;';
    end;
  else
    begin
      showmessage('Escolha o sexo da pessoa.');
      exit;
    end;
  end;

  case TSaude(RGSaude.ItemIndex) of
    TSaudavel:
      xMilitar.Saude := 'Saud?vel';
    TMorrendo:
    begin
      xMilitar.Saude := 'Debilitado';
      xMilitar.Apto := 'N?o';
      xMotivo := xMotivo + ' sa?de debilitada;';
    end;
    else
    begin
      showmessage('Escolha o estado de sa?de da pessoa.');
      exit;
    end;
  end;

  xIdade := strToInt(xMilitar.Idade);

  if xIdade < 18 then
    xMilitar.Apto := 'N?o';
    xMotivo := xMotivo + ' menor de idade';

  if xMilitar.Apto = 'N?o' then
    xMilitar.Motivo := 'Motiva??o da dispensa obrigat?ria: ' + xMotivo;

   setLength(fServMilitar, length(fServMilitar)+1);
   fServMilitar[length(fServMilitar)-1] := xMilitar;

   xContaPessoas := xContaPessoas + 1;

   if xContaPessoas = xQtdPessoas then
    begin
      listaRecrutas;
      xContaPessoas := 0;
      edtQtdPessoas.Enabled := true;
      edtQtdPessoas.text := '';
    end
    else
    begin
      edtNome.text:='';
      edtIdade.text:='';
    end;

end;



procedure TForm1.btnIncluirClick(Sender: TObject);
begin
  adicionaRecruta;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xContaPessoas := 0
end;

procedure TForm1.listaRecrutas;
var i: Integer;
begin
  mmResultado.Clear;
  for I := 0 to Length(fServMilitar)-1 do
  begin
    mmResultado.Lines.Add('Nome: ' + fServMilitar[i].Nome + '; Idade: ' +
    fServMilitar[i].Idade + '; Sexo: ' + fServMilitar[i].sexo + '; Sa?de: ' +
    fServMilitar[i].saude + '; Apto: ' + fServMilitar[i].apto + ' ' +
    fServMilitar[i].motivo);
  end;

end;

end.
