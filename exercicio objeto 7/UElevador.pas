unit UElevador;

interface

uses
  System.SysUtils;
{Crie uma classe denominada Elevador para armazenar as informa??es de um elevador
 dentro de um pr?dio. A classe deve armazenar o andar atual (t?rreo = 0), total
 de andares no pr?dio (desconsiderando o t?rreo), capacidade do elevador e
 quantas pessoas est?o presentes nele. A classe deve tamb?m disponibilizar os
 seguintes m?todos:

   a.	Inicializa: que deve receber como par?metros a capacidade do elevador e o
total de andares no pr?dio (os elevadores sempre come?am no t?rreo e vazio - usar o constructor);
   b.	Entra: para acrescentar uma pessoa no elevador (s? deve acrescentar se
ainda houver espa?o);
   c.	Sai: para remover uma pessoa do elevador (s? deve remover se houver algu?m
dentro dele);
   d.	Sobe: para subir um andar (n?o deve subir se j? estiver no ?ltimo andar);
   e.	Desce: para descer um andar (n?o deve descer se j? estiver no t?rreo);}
type
  TElevador = class
    private
      fCapacidadePessoas: Integer;
      fTotalAndares: Integer;
      fNPessoas: Integer;
      fNAndar: Integer;
    function getCapacidadePessoas: Integer;
    function getNAndar: Integer;
    function getNPessoas: Integer;
    function getTotalAndares: Integer;
    public
      property CapacidadePessoas: integer read getCapacidadePessoas;
      property TotalAndares: Integer read getTotalAndares;
      property NPessoas: Integer read getNPessoas;
      property NAndar: Integer read getNAndar;
      constructor Create(const aTotalAndares, aCapacidadePessoas: Integer; const
                          aPessoas: integer = 0; aAndar: Integer = 0);
      Function Entra(pPessoasEntrando: Integer): Integer;
      Function Sai(pPessoasSaindo: Integer): Integer;
      Function Sobe(pAndarDestino: Integer): Integer;
      Function Desce(pAndarDestino: Integer): Integer;
      Function ChecaAndar(pAndarAtual, pAndarDestino: Integer): Boolean;
      Procedure ChecaNegativo(pAndarPessoa: Integer);
      Function ChecaPessoas(pNPessoasDentro, pNPessoasEntrandoSaindo: Integer): Boolean;
  end;



implementation

{ TElevador }

function TElevador.ChecaAndar(pAndarAtual, pAndarDestino: Integer): Boolean;
begin
  if (pAndarDestino > fTotalAndares) then
    raise Exception.Create('Erro. O elevador n?o pode subir mais que o total de'
                           + ' andares.');
  if (pAndarDestino < 0) then
    raise Exception.Create('Erro. O elevador n?o pode descer abaixo do t?rreo.');

    Result := true;
end;

procedure TElevador.ChecaNegativo(pAndarPessoa: Integer);
begin
  if pAndarPessoa < 0 then
    raise Exception.Create('Valor Negativo');
end;

function TElevador.ChecaPessoas(pNPessoasDentro, pNPessoasEntrandoSaindo: Integer): Boolean;
var
  xTotalPessoas: integer;
begin
  xTotalPessoas := pNPessoasDentro + pNPessoasEntrandoSaindo;
  if xTotalPessoas > fCapacidadePessoas then
    raise Exception.Create('Erro. Valor acima da capacidade m?xima.'
                           + ' N?o ? poss?vel adicionar mais pessoas.')
  else if xTotalPessoas < 0 then
    raise Exception.Create('Erro. O elevador j? est? vazio. N?o ? poss?vel ramover'
                           + ' pessoas.');

end;

constructor TElevador.Create(const aTotalAndares, aCapacidadePessoas,
  aPessoas: integer; aAndar: Integer);
begin
  fTotalAndares := aTotalAndares;
  fCapacidadePessoas := aCapacidadePessoas;
  fNPessoas := aPessoas;
  fNAndar := aAndar;
end;

function TElevador.Desce(pAndarDestino: Integer): Integer;
begin
  ChecaNegativo(pAndarDestino);
  if pAndarDestino >= fNAndar then
    raise Exception.Create('O elevador n?o pode descer para um andar igual ou acima do atual');
  ChecaAndar(fNAndar, pAndarDestino);
  fNAndar := pAndarDestino;
end;

function TElevador.Entra(pPessoasEntrando: Integer): Integer;
begin
  ChecaNegativo(pPessoasEntrando);  
  ChecaPessoas(fNPessoas,pPessoasEntrando);
  fNPessoas := fNPessoas + pPessoasEntrando;
end;

function TElevador.getCapacidadePessoas: Integer;
begin
  Result := fCapacidadePessoas;
end;

function TElevador.getNAndar: Integer;
begin
  Result := fNAndar;
end;

function TElevador.getNPessoas: Integer;
begin
  Result := fNPessoas;
end;

function TElevador.Sai(pPessoasSaindo: Integer): Integer;
begin
  ChecaNegativo(pPessoasSaindo);
  ChecaPessoas(fNPessoas, -pPessoasSaindo);
  fNPessoas := fNPessoas - pPessoasSaindo;
end;

function TElevador.Sobe(pAndarDestino: Integer): Integer;
begin
  ChecaNegativo(pAndarDestino);
  if pAndarDestino <= fNAndar then
    raise Exception.Create('O elevador n?o pode subir para um andar igual ou acima do atual');
  ChecaAndar(fNAndar, pAndarDestino);
  fNAndar := pAndarDestino;
end;

function TElevador.getTotalAndares: Integer;
begin
 Result := fTotalAndares;
end;

end.
