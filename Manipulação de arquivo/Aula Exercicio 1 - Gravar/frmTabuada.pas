unit frmTabuada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNumero: TEdit;
    btnTabuada: TButton;
    procedure btnTabuadaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnTabuadaClick(Sender: TObject);
var
  xArq: TextFile;
  i, n: Integer;
begin
  try
    //Associa a variável do programa "xArq" ao arquivo externo
    //"tabuada.txt" na raiz do projeto
    AssignFile(xArq, 'tabuada.txt');

    //Cria o arquivo "tabuada.txt" na unidade de disco "d"
    if not (fileExists('tabuada.txt')) then
      Rewrite(xArq)
    else
      Append(xArq);

    n := StrToIntDef(edtNumero.Text,0);

    //Grava uma linha no arquivo
    Writeln(xArq, '+--Resultado--+');

    for I := 1 to 10 do
    begin
      //Grava uma linha da tabuada no arquivo
      Writeln(xArq, '| ', i, ' x ', n, ' = ', (i*n), ' |');
    end;

    //Grava uma linha no arquivo
    Writeln(xArq, '+-------------+');

    ShowMessage('Tabuada gravada com sucesso!');
  finally
    //Fecha o arquivo texto
    CloseFile(xArq);
  end;
end;

end.
