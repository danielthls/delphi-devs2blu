unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtTriangulo1A: TEdit;
    Label3: TLabel;
    edtTriangulo1B: TEdit;
    Label4: TLabel;
    edtTriangulo1C: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtTriangulo2A: TEdit;
    edtTriangulo2B: TEdit;
    edtTriangulo2C: TEdit;
    btnCalcular: TButton;
    btnCalcularOBJ: TButton;
    lblTriangulo1: TLabel;
    lblTriangulo2: TLabel;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnCalcularOBJClick(Sender: TObject);
  private
    { Private declarations }
    function calculaP (pLadoA, pLadoB, pLadoC: double): double;
    function calculaArea (pPerimetro, pLadoA, pLadoB, pLadoC: double): Extended;
    procedure escreveResultado;
    procedure calculaAreaOOP;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UTriangulo;

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  escreveResultado;
end;

procedure TForm1.btnCalcularOBJClick(Sender: TObject);
begin
  calculaAreaOOP;
end;

function TForm1.calculaArea(pPerimetro, pLadoA, pLadoB, pLadoC: double): Extended;
begin
  Result := Sqrt(pPerimetro * (pPerimetro - pLadoA) * (pPerimetro - pLadoB)
                      * (pPerimetro - pLadoC));

end;

procedure TForm1.calculaAreaOOP;
var
  xTrianguloX: TTriangulo;
  xTrianguloY: TTriangulo;

  xAreaX: Double;
  xAreaY: Double;
begin
  xTrianguloX := TTriangulo.Create;
  xTrianguloY := TTriangulo.Create;

  try
    //Primeiro Triangulo
    xTrianguloX.a := StrToFloatDef(edtTriangulo1A.text, 0);
    xTrianguloX.b := StrToFloatDef(edtTriangulo1B.text, 0);
    xTrianguloX.c := StrToFloatDef(edtTriangulo1C.text, 0);

    xAreaX := xTrianguloX.Area;

    xTrianguloY.a := StrToFloatDef(edtTriangulo2A.text, 0);
    xTrianguloY.b := StrToFloatDef(edtTriangulo2B.text, 0);
    xTrianguloY.c := StrToFloatDef(edtTriangulo2C.text, 0);

    xAreaY := xTrianguloY.Area;

    lblTriangulo1.caption := 'Triângulo 1 Área: ' + formatfloat('0.00',xAreaX);
    lblTriangulo2.caption := 'Triângulo 2 Área: ' + formatfloat('0.00',xAreaY);

    if (xAreaX > xAreaY) then
       lblResultado.caption := 'A área do triângulo 1 é maior'
    else
       lblResultado.caption := 'A área do triângulo 2 é maior';

  finally
    FreeAndNil(xTrianguloX);
    FreeAndNil(xTrianguloY);
  end;

end;

function TForm1.calculaP(pLadoA, pLadoB, pLadoC: double): double;
begin
  Result := (pLadoA + pLadoB + pLadoC) / 2;
end;

procedure TForm1.escreveResultado;
var
  xLado1A, xLado1B, xLado1C, xLado2A, xLado2B, xLado2C: double;
  xPerimetro1, xArea1, xPerimetro2, xArea2: double;
begin

  if (edtTriangulo1A.text = '') or (edtTriangulo1B.text = '') or
     (edtTriangulo1C.text = '') or (edtTriangulo2A.text = '') or
     (edtTriangulo2B.text = '') or (edtTriangulo2C.text = '')then
    begin
      showMessage('Digite todos os lados dos dois triângulos');
      exit;
    end;



  xLado1A := strToFloat(edtTriangulo1A.text);
  xLado1B := strToFloat(edtTriangulo1B.text);
  xLado1C := strToFloat(edtTriangulo1C.text);

  xLado2A := strToFloat(edtTriangulo2A.text);
  xLado2B := strToFloat(edtTriangulo2B.text);
  xLado2C := strToFloat(edtTriangulo2C.text);

  xPerimetro1 := calculaP(xLado1A, xLado1B, xLado1C);
  xArea1 := calculaArea(xPerimetro1,xLado1A, xLado1B, xLado1C);
  xPerimetro2 := calculaP(xLado2A, xLado2B, xLado2C);
  xArea2 := calculaArea(xPerimetro2,xLado2A, xLado2B, xLado2C);

  lblTriangulo1.caption := 'Triângulo 1 Área: ' + formatfloat('0.00',xArea1);
  lblTriangulo2.caption := 'Triângulo 2 Área: ' + formatfloat('0.00',xArea2);

  if xArea1 > xArea2 then
    lblResultado.caption := 'A área do triângulo 1 é maior'
  else if xArea2 > xArea1 then
    lblResultado.caption := 'A área do triângulo 2 é maior'
  else
    lblResultado.caption := 'Os dois triângulos possuem a mesma área';

end;

end.
