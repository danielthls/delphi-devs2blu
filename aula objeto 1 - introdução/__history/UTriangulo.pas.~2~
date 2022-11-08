unit UTriangulo;

interface

type
  TTriangulo = class
    public
      a:double;
      b:double;
      c:double;

      function Area: double;
  end;

implementation

{ TTriangulo }

function TTriangulo.Area: double;
var
  xP: double;
begin
  xP := (a + b + c) / 2;
  Result := Sqrt(xP * (xP-a) *(xP-b) * (xP-c));
end;

end.
