unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    edtNascimento: TEdit;
    Label3: TLabel;
    edtAltura: TEdit;
    lblIdade: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    {rocedure adicionaPessoa;}
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UPessoa;

{$R *.dfm}

{rocedure TForm1.adicionaPessoa;
var
  xPessoa: TPessoas;
  xIdade: double;
  xDia,xMes,xAno: word;
  xAnoNascimento, xAnoAtual: integer;
begin
  xPessoa.Nome := edtNome.text;
  xPessoa.DataNascimento := strToDate(edtNascimento.text);
  xPessoa.Altura := strToFloat(edtAltura.Text);
  try


    DecodeDate(xPessoa.DataNascimento,xAno,xMes,xDia);
    xAnoNascimento :=  xAno;

    DecodeDate(Now,xAno,xMes,xDia);
    xAnoAtual := xAno;

    xPessoa.Idade := xPessoa.calculaIdade;
    lblIdade.caption := 'Idade: ' + dateToStr(xPessoa.Idade);
  finally
    FreeAndNil(xPessoa);
  end;
end;}

procedure TForm1.Button1Click(Sender: TObject);
var
  xPessoa: TPessoas;
 xIdade: double;
 xDia,xMes,xAno: word;
  xAnoNascimento, xAnoAtual: integer;
begin
  xPessoa := TPessoas.Create;
  try
    xPessoa.Nome := edtNome.text;
    xPessoa.DataNascimento := strToDate(edtNascimento.text);
    xPessoa.Altura := strToFloat(edtAltura.Text);

    {DecodeDate(xPessoa.DataNascimento,xAno,xMes,xDia);
    xAnoNascimento :=  xAno;

    DecodeDate(Now,xAno,xMes,xDia);
    xAnoAtual := xAno;}

    xPessoa.Idade := xPessoa.calculaIdade;
    lblIdade.caption := 'Idade: ' + formatFloat('0.00',xPessoa.Idade);
  finally
    FreeAndNil(xPessoa);
  end;
end;

end.
