unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtA: TEdit;
    Label2: TLabel;
    edtB: TEdit;
    Label3: TLabel;
    edtResultado: TEdit;
    btnInverte: TButton;
    procedure btnInverteClick(Sender: TObject);
  private
    { Private declarations }
    procedure inverteValores;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnInverteClick(Sender: TObject);
begin
  inverteValores;
end;

procedure TForm1.inverteValores;
var
  xA, xB, xTemp : String;
begin
  xA := edtA.Text;
  xB := edtB.Text;

  xTemp := xB;
  xB := xA;
  xA := xTemp;

  edtResultado.Text := 'A = ' + xA + '; B = ' +xB;

end;

end.
