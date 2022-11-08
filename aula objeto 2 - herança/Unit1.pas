unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cmbAnimal: TComboBox;
    btnSom: TButton;
    procedure btnSomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UAnimais;

{$R *.dfm}

procedure TForm1.btnSomClick(Sender: TObject);
var
  xAnimal: TAnimal;
begin
  xAnimal := nil; //Sem referência a algum pointeiro na memória
                  //Assim que inicializa um objeto no delphi
  try
    case TEnumAnimal(cmbAnimal.ItemIndex) of
      stCachorro:
        xAnimal := TCachorro.Create;
      stGato:
        xAnimal := TGato.Create;
      stPassaro:
        xAnimal := TPassaro.Create
    end;

    showMessage(xAnimal.RetornarSom);
    showMessage('Tenho ' + intToStr(xAnimal.Patas) + ' patas.');
  finally
    FreeAndNil(xAnimal);
  end;
end;

end.
