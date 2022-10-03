program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Joa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TJoa, Joa);
  Application.Run;
end.
