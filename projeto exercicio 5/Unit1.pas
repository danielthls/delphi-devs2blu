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
    edtProva1: TEdit;
    Label3: TLabel;
    edtProva2: TEdit;
    Label4: TLabel;
    edtProva3: TEdit;
    mmBoletim: TMemo;
    Label5: TLabel;
    btnMedia: TButton;
    procedure btnMediaClick(Sender: TObject);
  private
  procedure calculaMedia;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnMediaClick(Sender: TObject);
begin
  calculaMedia;
end;

procedure TForm1.calculaMedia;
var
  xNome: string;
  xNota1, xNota2, xNota3, xMedia: double;
begin
  xNome := edtNome.text;
  xNota1 := strToFloat(edtProva1.text);
  xNota2 := strToFloat(edtProva2.text);
  xNota3 := strToFloat(edtProva3.text);

  xMedia := (xNota1 + xNota2 + xNota3)/3;

  mmBoletim.Lines.Clear;
  mmBoletim.Lines.Add('Nome do Aluno: ' +  xNome);
  mmBoletim.Lines.Add('Média Total: ' + floatToStr(xMedia));
end;

end.
