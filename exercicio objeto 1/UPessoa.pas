unit UPessoa;

interface

uses
System.SysUtils;
 
type
  TPessoas = class
  private
    FNome: string;
    FDataNascimento: TDate;
    FAltura: double;
    FIdade: TDate;
    function GetAltura: double;
    function GetDataNascimento: TDate;
    function GetIdade: double;
    function GetNome: String;
    procedure SetAltura(const Value: double);
    procedure SetDataNascimento(const Value: TDate);
    procedure SetIdade(const Value: double);
    procedure SetNome(const Value: String);
  public
    property Nome: String read GetNome write SetNome;
    property DataNascimento: TDate read GetDataNascimento write SetDataNascimento;
    property Altura: double read GetAltura write SetAltura;
    property Idade: double read GetIdade write SetIdade;
    function calculaIdade : double;
  end;
implementation

{ TPessoas }

function TPessoas.calculaIdade: double;
begin
  Result := (Date - DataNascimento)/365.25;
end;

function TPessoas.GetAltura: double;
begin
  Result := FAltura;
end;

function TPessoas.GetDataNascimento: TDate;
begin
  Result := FDataNascimento;
end;

function TPessoas.GetIdade: double;
begin
  Result := FIdade;
end;

function TPessoas.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoas.SetAltura(const Value: double);
begin
  FAltura := Value;
end;

procedure TPessoas.SetDataNascimento(const Value: TDate);
begin
  FDataNascimento := Value;
end;

procedure TPessoas.SetIdade(const Value: double);
begin
  FIdade := Value;
end;

procedure TPessoas.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
