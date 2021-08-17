unit nfuncoes;

interface

uses
  System.SysUtils, System.Variants;
Function Calcular(Nro1, Nro2:double; Operador:char):double;
Function Montadisplay(ValorAtual, NovoDigito : string):string;

implementation

Function Calcular(Nro1, Nro2:double; Operador:char):double;
begin
  case operador of
    '+' : Result := Nro1 + Nro2;
    '-' : Result := Nro1 - Nro2;
    '*' : Result := Nro1 * Nro2;
    '/' : Result := Nro1 / Nro2;
  end;
end;

Function Montadisplay(ValorAtual, NovoDigito : string):string;
begin
  if StrToFloat(ValorAtual) = 0
    then Result := NovoDigito
    else Result := ValorAtual + NovoDigito;
end;

end.