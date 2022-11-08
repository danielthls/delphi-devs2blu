unit UAluno;

interface

uses
  UDisciplina;

type
{Escreva uma classe cujos objetos representam alunos matriculados em uma
disciplina. Cada objeto dessa classe deve guardar os seguintes dados do aluno:
matrícula, nome, 2 notas de prova e 1 nota de trabalho. Escreva os seguintes
métodos para esta classe:

a. media: calcula a média final do aluno (cada prova tem peso 2,5 e o trabalho
tem peso 2).
b. final: calcula quanto o aluno precisa para a prova final (retorna zero se
ele não for para a final).

Observação: Usar duas classes TAluno e TDisciplina (Código e Descrição)}

  TAluno = class
  private
    fNome: String;
    fMatricula: Integer;
    fNota1: double;
    fNota2: double;
    fNotaTrabalho: double;
    fDisciplina: TDisciplina;
    function getMatricula: Integer;
    function getNome: String;
    function getNota1: double;
    function getNota2: double;
    function getNotaTrabalho: double;
    procedure setMatricula(const Value: Integer);
    procedure setNome(const Value: String);
    procedure setNota1(const Value: double);
    procedure setNota2(const Value: double);
    procedure setNotaTrabalho(const Value: double);
    function getDisciplina: TDisciplina;
  public
    property Nome: String read getNome write setNome;
    property Matricula: Integer read getMatricula write setMatricula;
    property Nota1: double read getNota1 write setNota1;
    property Nota2: double read getNota2 write setNota2;
    property NotaTrabalho: double read getNotaTrabalho write setNotaTrabalho;
    property Discipline: TDisciplina read getDisciplina;
    function Media: double;
    function ProvaFinal: double;
  end;
implementation

{ TAluno }

function TAluno.getDisciplina: TDisciplina;
begin

end;

function TAluno.getMatricula: Integer;
begin
  Result := fMatricula;
end;

function TAluno.getNome: String;
begin
  Result := fNome;
end;

function TAluno.getNota1: double;
begin
  Result := fNota1;
end;

function TAluno.getNota2: double;
begin
  Result := fNota2;
end;

function TAluno.getNotaTrabalho: double;
begin
  Result := fNotaTrabalho;
end;

function TAluno.Media: double;
const pesoProva = 2.5;
const pesoTrabalho = 2;
begin
  Result := (((fNota1 * pesoProva)/7) + ((fNota2 * pesoProva)/7) + ((fNotaTrabalho * pesoTrabalho)/7))/3;
end;

function TAluno.ProvaFinal: double;
  var mediaGeral: double;
  var mediaFinal: double;
begin
  mediaGeral := Media;
  mediaFinal := 10 - mediaGeral;
  if mediaFinal > 4 then
    Result := mediaFinal
  else
    Result := 0;
end;

procedure TAluno.setMatricula(const Value: Integer);
begin
  fMatricula := Value;
end;

procedure TAluno.setNome(const Value: String);
begin

end;

procedure TAluno.setNota1(const Value: double);
begin

end;

procedure TAluno.setNota2(const Value: double);
begin

end;

procedure TAluno.setNotaTrabalho(const Value: double);
begin

end;

end.
