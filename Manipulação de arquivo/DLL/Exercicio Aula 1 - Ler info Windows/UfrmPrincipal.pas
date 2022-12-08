unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNomePC: TEdit;
    Label2: TLabel;
    edtNomeUser: TEdit;
    Label3: TLabel;
    edtDirSistema: TEdit;
    Label4: TLabel;
    edtDirWindows: TEdit;
    Label5: TLabel;
    edtDirTemp: TEdit;
    Label6: TLabel;
    edtVersaoWindows: TEdit;
    btnInformacoes: TButton;
    procedure btnInformacoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UInfoPC;

{$R *.dfm}

procedure TForm1.btnInformacoesClick(Sender: TObject);
begin
  edtNomePC.text        := TInfoPC.ComputerName;
  edtNomeUser.text      := TInfoPC.UserName;
  edtDirSistema.Text    := TInfoPC.SystemDirectory;
  edtDirWindows.Text    := TInfoPC.WindowsDirectory;
  edtDirTemp.Text       := TInfoPC.TempPath;
  edtVersaoWindows.Text := TInfoPC.VersionEx;
end;

end.
