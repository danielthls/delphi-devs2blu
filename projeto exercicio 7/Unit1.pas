unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtCelsius: TEdit;
    Label2: TLabel;
    edtFarenheit: TEdit;
    btnConverte: TButton;
    procedure btnConverteClick(Sender: TObject);
  private
    { Private declarations }
    procedure converteCParaF;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConverteClick(Sender: TObject);
begin
  converteCParaF;
end;

procedure TForm1.converteCParaF;
var
xCelsius,xFarenheit:double;

begin
  xCelsius := StrToFloat(edtCelsius.Text);

  xFarenheit := (9*xCelsius+160)/5;

  edtFarenheit.text := FloatToStr(xFarenheit);
end;

end.
