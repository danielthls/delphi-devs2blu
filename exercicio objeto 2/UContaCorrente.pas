unit UContaCorrente;

interface

type
  TContaCorrente = class
    private
      FNumeroConta: integer;
      FNome: string;
      FSaldo: double;
      function GetConta: integer;
      procedure setConta(const Value: integer);
      function GetNome: string;
      function GetSaldo: double;
      procedure setNome(const Value: string);
      procedure setSaldo(const Value: double);

    public
      property NumeroConta: integer read GetConta write setConta;
      property Nome: string read GetNome write setNome;
      property Saldo: double read GetSaldo write setSaldo;
      procedure alterarNome;
      function deposito(pEntrada: double): double;
      function saque(pSaida: double): double;
      constructor Create(const aNumeroConta: integer; const aNomeCorrentista: String; const aSaldo: double = 0);

  end;

implementation

{ TContaCorrente }
//================ Procedures e Functions
procedure TContaCorrente.alterarNome;
begin

end;

constructor TContaCorrente.Create(const aNumeroConta: integer;
  const aNomeCorrentista: String; const aSaldo: double);
begin
  FNumeroConta := aNumeroConta;
  FNome := aNomeCorrentista;
  FSaldo := aSaldo;
end;

function TContaCorrente.deposito(pEntrada: double): double;
begin
  Result := fSaldo + pEntrada;
end;

function TContaCorrente.saque(pSaida: double): double;
begin
  Result := fSaldo - pSaida;
end;


//================== Gets
function TContaCorrente.GetConta: integer;
begin
  Result := FNumeroConta;
end;

function TContaCorrente.GetNome: string;
begin
  Result := FNome;
end;

function TContaCorrente.GetSaldo: double;
begin
  Result := FSaldo;
end;

//=============== Sets
procedure TContaCorrente.setConta(const Value: integer);
begin
  FNumeroConta := Value;
end;

procedure TContaCorrente.setNome(const Value: string);
begin
  FNome := Value;
end;

procedure TContaCorrente.setSaldo(const Value: double);
begin
  FSaldo := Value;
end;

end.
