unit UJogador;

interface

type
  TJogador = Class
    private
      fId: Integer;
      fNome: String;
      fPosicao: String;
      fIdade: Integer;
    function getID: Integer;
    function getIdade: Integer;
    function getNome: String;
    function getPosicao: String;
    procedure setID(const Value: Integer);
    procedure setIdade(const Value: Integer);
    procedure setNome(const Value: String);
    procedure setPosicao(const Value: String);
    public
      property ID: Integer read getID write setID;
      property Nome: String read getNome write setNome;
      property Posicao: String read getPosicao write setPosicao;
      property Idade: Integer read getIdade write setIdade;
  End;

implementation

{ TJogador }

function TJogador.getID: Integer;
begin
  Result := fID;
end;

function TJogador.getIdade: Integer;
begin
  Result := fIdade;
end;

function TJogador.getNome: String;
begin
  Result := fNome;
end;

function TJogador.getPosicao: String;
begin
  Result := fPosicao;
end;

procedure TJogador.setID(const Value: Integer);
begin
  fID := Value;
end;

procedure TJogador.setIdade(const Value: Integer);
begin
  fIdade := Value;
end;

procedure TJogador.setNome(const Value: String);
begin
  fNome := Value;
end;

procedure TJogador.setPosicao(const Value: String);
begin
  fPosicao := Value;
end;

end.
