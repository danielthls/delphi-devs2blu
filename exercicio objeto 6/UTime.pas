unit UTime;

interface

uses
UJogador, System.Generics.Collections;

type
  TTime = Class
    private
      fId: Integer;
      fNome: String;
      fTecnico: String;
      fAnoFundacao: tDate;
      FJogadores: TList<TJogador>;
      function getAnoFundacao: tDate;
      function getId: Integer;
      function getNome: String;
      function getTecnico: String;
      function getJogadores: TList<TJogador>;
      procedure setAnoFundacao(const Value: tDate);
      procedure setId(const Value: Integer);
      procedure setNome(const Value: String);
      procedure setTecnico(const Value: String);
      procedure setJogadores(const Value: TList<TJogador>);
     public
      constructor Create(aJogadores: tList<tJogador>);
      property Jogadores: TList<TJogador> read getJogadores write setJogadores;
      property Id: Integer read getId write setId;
      property Nome: String read getNome write setNome;
      property Tecnico: String read getTecnico write setTecnico;
      property AnoFundacao: tDate read getAnoFundacao write setAnoFundacao;
  End;

implementation

{ TTime }

constructor TTime.Create(aJogadores: tList<tJogador>);
begin
  inherited create;

  fJogadores := aJogadores;
end;

function TTime.getAnoFundacao: tDate;
begin
  Result := fAnoFundacao;
end;

function TTime.getId: Integer;
begin
  Result := fID;
end;

function TTime.getJogadores: TList<TJogador>;
begin
  Result := fJogadores;
end;

function TTime.getNome: String;
begin
  Result := fNome;
end;

function TTime.getTecnico: String;
begin
  Result := fTecnico;
end;

procedure TTime.setAnoFundacao(const Value: tDate);
begin
  fAnoFundacao := Value;
end;

procedure TTime.setId(const Value: Integer);
begin
  fID := Value;
end;

procedure TTime.setJogadores(const Value: TList<TJogador>);
begin
  fJogadores := Value;
end;

procedure TTime.setNome(const Value: String);
begin
  fNome := Value;
end;

procedure TTime.setTecnico(const Value: String);
begin
  fTecnico := Value;
end;

end.
