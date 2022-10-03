unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TNum = (opUm = 1, opDois, opTres, opQuatro, opCinco);
  TForm1 = class(TForm)
    edtNumero: TEdit;
    Label1: TLabel;
    btnExtenso: TButton;
    procedure btnExtensoClick(Sender: TObject);
  private
    { Private declarations }
    procedure escreveExtenso;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExtensoClick(Sender: TObject);
begin
  escreveExtenso;
end;

procedure TForm1.escreveExtenso;
var
  xNumero : integer;
begin
  xNumero := strToInt(edtNumero.text);

  case TNum(xNumero) of
  opUm: showMessage('Um');
  opDois: showMessage('Dois');
  opTres: showMessage('Três');
  opQuatro: showMessage('Quatro');
  opCinco: showMessage('Cinco');
  else showMessage('Número inválido');
  end;
end;

end.
