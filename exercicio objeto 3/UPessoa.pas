unit UPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils;

type

  TPessoa = class
    private
      fNome: String;
      fEndereco: String;
    function getEndereco: string;
    function getNome: string;
    procedure setEndereco(const Value: string);
    procedure setNome(const Value: string);
    public
      function gravar: string; virtual; abstract;
      function valida(aValida: String): boolean; virtual; abstract;
      property nome: string read getNome write setNome;
      property endereco: string read getEndereco write setEndereco;
  end;

  TPessoaFisica = class(TPessoa)
    private
      fCPF: String;
      fIdade: byte;
    function getCPF: string;
    function getIdade: byte;
    procedure setCPF(const Value: string);
    procedure setIdade(const Value: byte);
    public
      function gravar: string;  override;
      property CPF: string read getCPF write setCPF;
      property Idade: byte read getIdade write setIdade;
      function valida(aValida: String): boolean; override;
  end;

  tPessoaJuridica = class(TPessoa)
    private
      fCNPJ: String;
      fIE: String;
    function getCNPJ: String;
    function getIE: String;
    procedure setCNPJ(const Value: String);
    procedure setIE(const Value: String);
    public
      function gravar: string;  override;
      property CNPJ: String read getCNPJ write setCNPJ;
      property IE: String read getIE write setIE;
      function valida(aValida: String): boolean; override;
  end;

implementation

{ TPessoa }

function TPessoa.getEndereco: string;
begin
  Result := fEndereco;
end;

function TPessoa.getNome: string;
begin
  Result := fNome;
end;

procedure TPessoa.setEndereco(const Value: string);
begin
  fEndereco := Value;
end;

procedure TPessoa.setNome(const Value: string);
begin
  fNome := Value;
end;

{ TPessoaFisica }

function TPessoaFisica.getCPF: string;
begin
  Result := fCPF;
end;

function TPessoaFisica.getIdade: byte;
begin
  Result := fIdade;
end;

function TPessoaFisica.gravar: string;
begin
  Result:= 'Nome: ' + fNome + #13#10 +
  'CPF: ' + fCPF + #13#10 +
  'Endere�o: ' + fEndereco + #13#10 +
  'Idade: ' + intToStr(fIdade);
end;

procedure TPessoaFisica.setCPF(const Value: string);
begin
  fCPF := Value;
end;

procedure TPessoaFisica.setIdade(const Value: byte);
begin
  fIdade := Value;
end;

function TPessoaFisica.valida(aValida: string): boolean;
var  dig10, dig11: string;
    s, i, r, peso: integer;
begin
// length - retorna o tamanho da string (CPF � um n�mero formado por 11 d�gitos)
  if ((aValida = '00000000000') or (aValida = '11111111111') or
      (aValida = '22222222222') or (aValida = '33333333333') or
      (aValida = '44444444444') or (aValida = '55555555555') or
      (aValida = '66666666666') or (aValida = '77777777777') or
      (aValida = '88888888888') or (aValida = '99999999999') or
      (length(aValida) <> 11))
     then begin
              Result := false;
              exit;
            end;

// try - protege o c�digo para eventuais erros de convers�o de tipo na fun��o StrToInt
  try
{ *-- C�lculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
// StrToInt converte o i-�simo caractere do aValida em um n�mero
      s := s + (StrToInt(aValida[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um n�mero no respectivo caractere num�rico

{ *-- C�lculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(aValida[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = aValida[10]) and (dig11 = aValida[11]))
       then Result := true
    else Result := false;
  except
    Result := false;
  end;
end;


{ tPessoaJuridica }

function tPessoaJuridica.getCNPJ: String;
begin
  Result := fCNPJ;
end;

function tPessoaJuridica.getIE: String;
begin
  Result := fIE;
end;

function tPessoaJuridica.gravar: string;
begin
  Result:= 'Nome: ' + fNome + #13#10 +
  'CNPJ: ' + fCNPJ + #13#10 +
  'Endere�o: ' + fEndereco + #13#10 +
  'Inscri��o Estadual: ' + fIe;
end;

procedure tPessoaJuridica.setCNPJ(const Value: String);
begin
  fCNPJ := Value;
end;

procedure tPessoaJuridica.setIE(const Value: String);
begin
  fIE := Value;
end;

function tPessoaJuridica.valida(aValida: string): boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin
// length - retorna o tamanho da string do CNPJ (CNPJ � um n�mero formado por 14 d�gitos)
  if ((aValida = '00000000000000') or (aValida = '11111111111111') or
      (aValida = '22222222222222') or (aValida = '33333333333333') or
      (aValida = '44444444444444') or (aValida = '55555555555555') or
      (aValida = '66666666666666') or (aValida = '77777777777777') or
      (aValida = '88888888888888') or (aValida = '99999999999999') or
      (length(aValida) <> 14))
     then begin
            Result := false;
            exit;
          end;

// "try" - protege o c�digo para eventuais erros de convers�o de tipo atrav�s da fun��o "StrToInt"
  try
{ *-- C�lculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
// StrToInt converte o i-�simo caractere do aValida em um n�mero
      sm := sm + (StrToInt(aValida[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um n�mero no respectivo caractere num�rico

{ *-- C�lculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(aValida[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = aValida[13]) and (dig14 = aValida[14]))
       then Result := true
    else Result := false;
  except
    Result := false
  end;
end;

end.
