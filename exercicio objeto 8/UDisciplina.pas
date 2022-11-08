unit UDisciplina;

interface

type

  TDisciplina = class
  private
    fNome: String;
    fCod: Integer;
    fDescricao: String;
    function getCod: Integer;
    function getDescricao: String;
    function getNome: String;
    procedure setCod(const Value: Integer);
    procedure setDescricao(const Value: String);
    procedure setNome(const Value: String);
  public
    property Nome: String read getNome write setNome;
    property Cod: Integer read getCod write setCod;
    property Descricao: String read getDescricao write setDescricao;
  end;

implementation

{ TDisciplina }

function TDisciplina.getCod: Integer;
begin
  Result := fCod;
end;

function TDisciplina.getDescricao: String;
begin
  Result := fDescricao;
end;

function TDisciplina.getNome: String;
begin
  Result := fNome;
end;

procedure TDisciplina.setCod(const Value: Integer);
begin
  fCod := Value;
end;

procedure TDisciplina.setDescricao(const Value: String);
begin
  fDescricao := Value;
end;

procedure TDisciplina.setNome(const Value: String);
begin
  fNome := Value;
end;

end.
