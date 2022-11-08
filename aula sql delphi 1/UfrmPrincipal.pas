unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlMenu: TPanel;
    imgCompradores: TImage;
    imgUnMedidas: TImage;
    imgPedidos: TImage;
    imgFornecedores: TImage;
    imgProdutos: TImage;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure pnlMenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCompradores;

procedure TfrmPrincipal.pnlMenuClick(Sender: TObject);
begin
  if not assigned(frmCompradores) then
    frmCompradores := TfrmCompradores.Create(Self);

  frmCompradores.Show;
end;

end.
