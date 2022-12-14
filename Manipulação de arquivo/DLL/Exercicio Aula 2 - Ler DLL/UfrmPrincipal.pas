unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSoma = function (A: Double; B: Double): Double; stdcall;

  TForm1 = class(TForm)
    Label1: TLabel;
    edtNum1: TEdit;
    Label2: TLabel;
    edtNum2: TEdit;
    btnCalcular: TButton;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChamarDLL;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  ChamarDll;
end;

procedure TForm1.ChamarDLL;
var
  xHandle: THandle;
  xSoma: TSoma;
  xResultado: double;
  xNum1, xNum2: Double;
begin
  if not TryStrToFloat(edtNum1.Text, xNum1) then
    raise Exception.Create('Valor para o n?mero 1 inv?lido!');
  if not TryStrToFloat(edtNum2.Text, xNum2) then
    raise Exception.Create('Valor para o n?mero 2 inv?lido!');

  xHandle := LoadLibrary('MinhaDLL.dll');
  if xHandle > 0 then
  begin
    try
      @xSoma := GetProcAddress(xHandle, 'Somar');
      if @xSoma <> nil then
      begin
        xResultado := xSoma(xNum1, xNum2);
        lblResultado.Caption := xResultado.ToString;
      end
      else
         showMessage('N?o foi poss?vel carregar o procedimento da DLL.');
    finally
      FreeLibrary(xHandle);
    end;
  end
  else
    ShowMessage('N?o foi poss?vel carregar a DLL.');
end;

end.
