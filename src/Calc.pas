unit Calc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnVezes: TButton;
    btnTres: TButton;
    btnCinco: TButton;
    btnDois: TButton;
    btnQuatro: TButton;
    btnIgual: TButton;
    btnMais: TButton;
    btnMenos: TButton;
    btnSeis: TButton;
    btnSet: TButton;
    btnOito: TButton;
    btnNove: TButton;
    btnZero: TButton;
    btnUm: TButton;
    btnDividir: TButton;
    btnLimpar: TButton;
    panelDisplay: TPanel;
    procedure btnDividirClick(Sender: TObject);
    procedure btnVezesClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure addNumero(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);

  private
    PrimeiroNumero, SegundoNumero: Double;
    Operador : Char;
    Resultado : Double;

    Procedure Limpar;
  public

  end;

var
  Form1: TForm1;

implementation

uses
  nFuncoes;

{$R *.dfm}

procedure TForm1.addNumero(Sender: TObject);
begin

  if Resultado <> 0 then begin
    SegundoNumero:= StrToFloat(TButton(Sender).Caption);
    panelDisplay.Caption:= FloatToStr(SegundoNumero);
    exit
  end;

  panelDisplay.Caption := Montadisplay(panelDisplay.Caption, TButton(Sender).Caption);

  if (Operador = '') or (Operador = '0') then begin
   PrimeiroNumero:= StrToFloat(panelDisplay.Caption)
  end
    else SegundoNumero:= StrToFloat(panelDisplay.Caption);
end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
  if Operador <> '' then begin
    if Operador <> '/' then begin
      Resultado:= Calcular(PrimeiroNumero, SegundoNumero, Operador);
      panelDisplay.Caption:= FloatToStr(Resultado);
      PrimeiroNumero:= Resultado;
      Operador:= '/';
      SegundoNumero:= 0;
      exit
    end;
    Resultado:= Calcular(PrimeiroNumero, SegundoNumero, Operador);
    panelDisplay.Caption:= FloatToStr(Resultado);
    PrimeiroNumero:= Resultado;
    Operador:= '/';
    exit;
  end;

  Operador:= '/';
  panelDisplay.Caption:= '0';
end;

procedure TForm1.btnIgualClick(Sender: TObject);

begin
  if (PrimeiroNumero = 0) and (SegundoNumero = 0)then begin
    panelDisplay.Caption:= '0';
    exit;
  end;

  Resultado:= Calcular(PrimeiroNumero, SegundoNumero, Operador);

  panelDisplay.Caption:= FloatToStr(Resultado);

  PrimeiroNumero:= Resultado;
  SegundoNumero:= 0;
  Operador:= #0;
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
Limpar;
end;

procedure TForm1.btnMaisClick(Sender: TObject);

begin

  if Operador <> '' then begin
    if Operador <> '+' then begin
      Resultado:= Calcular(PrimeiroNumero, SegundoNumero, Operador);
      panelDisplay.Caption:= FloatToStr(Resultado);
      PrimeiroNumero:= Resultado;
      Operador:= '+';
      SegundoNumero:= 0;
      exit
    end;
    Resultado:= Calcular(PrimeiroNumero, SegundoNumero, Operador);
    panelDisplay.Caption:= FloatToStr(Resultado);
    PrimeiroNumero:= Resultado;
    Operador:= '+';
    exit;
  end;

  Operador:= '+';
  panelDisplay.Caption:= '0';
end;

procedure TForm1.btnMenosClick(Sender: TObject);
begin

  if Operador <> '' then begin
    if Operador <> '-' then begin
    Resultado:= Calcular(PrimeiroNumero, SegundoNumero, Operador);
    panelDisplay.Caption:= FloatToStr(Resultado);
    PrimeiroNumero:= Resultado;
    Operador:= '-';
    SegundoNumero:= 0;
    exit
    end;
    Resultado:= Calcular(PrimeiroNumero, SegundoNumero, Operador);
    panelDisplay.Caption:= FloatToStr(Resultado);
    PrimeiroNumero:= Resultado;
    Operador:= '-';
    exit;
  end;
  Operador:= '-';
  panelDisplay.Caption:= '0';
end;

procedure TForm1.btnVezesClick(Sender: TObject);
begin
    if Operador <> '' then begin
      if Operador <> '*' then begin
        Resultado:= Calcular(PrimeiroNumero, SegundoNumero, Operador);
        panelDisplay.Caption:= FloatToStr(Resultado);
        PrimeiroNumero:= Resultado;
        Operador:= '*';
        SegundoNumero:= 0;
        exit
      end;
    Resultado:= Calcular(PrimeiroNumero, SegundoNumero, Operador);
    panelDisplay.Caption:= FloatToStr(Resultado);
    PrimeiroNumero:= Resultado;
    Operador:= '*';
    exit;
  end;

  Operador:= '*';
  panelDisplay.Caption:= '0';
end;

procedure TForm1.Limpar;
begin
  panelDisplay.Caption:= '0';
  PrimeiroNumero:= 0;
  SegundoNumero:= 0;
  Operador:= #0;
  Resultado:= 0;
end;

end.
