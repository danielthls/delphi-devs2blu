unit UTriangulo;

interface

type
  TTriangulo = class
     private
      FA:double;
      FB:double;
      FC:double;
      FD:double;
    function GetA: Double;
    function GetB: Double;
    function GetC: Double;
    function GetD: Double; //Propriedade somente leitura;
    procedure SetA(const Value: Double);
    procedure SetB(const Value: Double);
    procedure SetC(const Value: Double);

     public
      function Area: double;

      property A: Double read GetA write SetA;
      property B: Double read GetB write SetB;
      property C: Double read GetC write SetC;

      property D: Double read GetD;
  end;

implementation

{ TTriangulo }

function TTriangulo.Area: double;
var
  xP: double;
begin
  FD := 10; //Não é possível (porque é somente leitura)
  xP := (FA + FB + FC) / 2;
  Result := Sqrt(xP * (xP-FA) *(xP-FB) * (xP-FC));
end;

function TTriangulo.GetA: Double;
begin
  Result := FA;
end;

function TTriangulo.GetB: Double;
begin
 Result := FB;
end;

function TTriangulo.GetC: Double;
begin
  Result := FC;
end;

function TTriangulo.GetD: Double;
begin
  Result := FD;
end;

procedure TTriangulo.SetA(const Value: Double);
begin
  FA := Value;
end;

procedure TTriangulo.SetB(const Value: Double);
begin
  FB := Value;
end;

procedure TTriangulo.SetC(const Value: Double);
begin
  FC := Value;
end;

end.
