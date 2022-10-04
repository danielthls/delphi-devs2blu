program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FormConsumoEnergia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormConsumoEnergia, FormConsumoEnergia);
  Application.Run;
end.
