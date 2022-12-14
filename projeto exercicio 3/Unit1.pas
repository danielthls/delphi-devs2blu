unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtDistancia: TEdit;
    Label2: TLabel;
    edtConsumo: TEdit;
    M?dia: TLabel;
    edtMedia: TEdit;
    btnMedia: TButton;
    procedure btnMediaClick(Sender: TObject);
  private
    procedure calculaMedia;
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
xDistancia: double;
xConsumo: double;
xMedia: double;
begin
  xDistancia := StrToFloat(edtDistancia.text);
  xConsumo := StrToFloat(edtConsumo.text);
  xMedia := xDistancia / xConsumo;
  edtMedia.text := floatToStr(xMedia) + ' km/l';
end;

end.
