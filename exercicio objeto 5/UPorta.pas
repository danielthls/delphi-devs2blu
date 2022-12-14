unit UPorta;

interface

uses
  System.SysUtils,Vcl.Dialogs;

type

  Tporta = class
    Private
      fCor: String;
      fAltura: Double;
      fMacaneta: String;
      fMaterial: String;
      fFechadura: String;
      fTrancada: Boolean;
      function getAltura: Double;
      function getCor: String;
      function getFechadura: String;
      function getMacaneta: String;
      function getMaterial: String;
      function getTrancada: Boolean;
      procedure setAltura(const Value: Double);
      procedure setCor(const Value: String);
      procedure setFechadura(const Value: String);
      procedure setMacaneta(const Value: String);
      procedure setMaterial(const Value: String);
      procedure setTrancada(const Value: Boolean);
    Public
      procedure Abrir;
      procedure Fechar;
      procedure Trancar;
      procedure Destrancar;
      property Cor: String read getCor write setCor;
      property Altura: Double read getAltura write setAltura;
      property Macaneta: String read getMacaneta write setMacaneta;
      property Material: String read getMaterial write setMaterial;
      property Fechadura: String read getFechadura write setFechadura;
      property Trancada: Boolean read getTrancada write setTrancada;

  end;


implementation

{ Tporta }

procedure Tporta.Abrir;
begin
 if fTrancada = true then
  raise Exception.Create('A porta est? trancada!')
 else
  showMessage('A porta foi aberta com sucesso!');
end;

procedure Tporta.Destrancar;
begin
  fTrancada := false;
end;

procedure Tporta.Fechar;
begin

end;

function Tporta.getAltura: Double;
begin

end;

function Tporta.getCor: String;
begin
  Result := fCor;
end;

function Tporta.getFechadura: String;
begin
  Result := fFechadura;
end;

function Tporta.getMacaneta: String;
begin
  Result := fMacaneta;
end;

function Tporta.getMaterial: String;
begin
  Result := fMaterial;
end;

function Tporta.getTrancada: Boolean;
begin
  Result := fTrancada;
end;

procedure Tporta.setAltura(const Value: Double);
begin
  fAltura := Value;
end;

procedure Tporta.setCor(const Value: String);
begin
  fCor := Value;
end;

procedure Tporta.setFechadura(const Value: String);
begin
  fFechadura := Value;
end;

procedure Tporta.setMacaneta(const Value: String);
begin
  fMacaneta := Value;
end;

procedure Tporta.setMaterial(const Value: String);
begin
  fMaterial := Value;
end;

procedure Tporta.setTrancada(const Value: Boolean);
begin
  fTrancada := Value;
end;

procedure Tporta.Trancar;
begin

end;

end.
